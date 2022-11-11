import 'dart:async';

import "package:flutter/material.dart";
import "package:graphql_flutter/graphql_flutter.dart";
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final storage = const FlutterSecureStorage();

class GraphQLConfig {
  static String token = "your can get it from a secured storage";

  static HttpLink httpLink = HttpLink(
    'https://sms-endpoint.go-globalschool.com/graphql',
  );

  ///if you want to pass token
  static ValueNotifier<GraphQLClient> graphInit() {
    // We're using HiveStore for persistence,
    // so we need to initialize Hive.

    final AuthLink authLink = AuthLink(
      getToken: () async => 'Bearer $token',
    );

    final Link link = authLink.concat(httpLink);

    final ValueNotifier<GraphQLClient> client = ValueNotifier(
      GraphQLClient(
        link: link,
        // The default store is the InMemoryStore, which does NOT persist to disk
        cache: GraphQLCache(
          store: HiveStore(),
        ),
      ),
    );

    return client;
  }

  GraphQLClient clientToQuery() {
    AuthLink authLink = AuthLink(
      getToken: () async => 'Bearer $token',
    );

    final Link link = authLink.concat(httpLink);
    return GraphQLClient(
      cache: GraphQLCache(
        store: HiveStore(),
      ),
      link: link,
    );
  }
}

typedef GetHeaders = FutureOr<Map<String, String>> Function();

class CustomAuthLink extends Link {
  CustomAuthLink({
    required this.getHeaders,
  });

  final GetHeaders getHeaders;

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    late StreamController<Response> controller;
    Future<void> onListen() async {
      try {
        final Map<String, String> headers = await getHeaders();

        request.updateContextEntry<HttpLinkHeaders>(
          (_headers) => HttpLinkHeaders(
            headers: <String, String>{
              ...headers,
            },
          ),
        );
      } catch (error) {
        controller.addError(error);
      }

      await controller.addStream(forward!(request));
      await controller.close();
    }

    controller = StreamController<Response>(onListen: onListen);

    return controller.stream;
  }
}

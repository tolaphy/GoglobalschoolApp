import 'package:flutter/material.dart';
import 'package:goglobalschoolapp/widgets/appbar.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsPage extends StatelessWidget {
  final Uri _url = Uri.parse('https://www.go-globalschool.com/news');
  NewsPage({Key? key}) : super(key: key);

  void _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) => const Scaffold(
      appBar: CommonAppBar(
        notificationenabled: true,
        arrowback: false,
        title: "News",
      ),
      body: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: 'https://www.go-globalschool.com/news',
      ));
}

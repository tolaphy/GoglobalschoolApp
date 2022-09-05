import 'package:flutter/material.dart';
import 'package:goglobalschoolapp/widgets/appbar.dart';
import 'package:goglobalschoolapp/widgets/menucard.dart';
import 'package:goglobalschoolapp/widgets/profile.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: CommonAppBar(
          title: 'Notification',
          notificationenabled: false,
          arrowback: true,
        ),
        body: Center(
          child: Text(
            'Not available',
            style: TextStyle(fontSize: 20),
          ),
        ));
  }
}

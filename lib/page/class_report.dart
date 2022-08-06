import 'package:flutter/material.dart';
import 'package:goglobalschoolapp/page/location.dart';
import 'package:goglobalschoolapp/page/notification.dart';
import 'package:goglobalschoolapp/page/report.dart';
import 'package:goglobalschoolapp/widgets/appbar.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../login_screen.dart';

class Class_report extends StatelessWidget {
  const Class_report({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: const CommonAppBar(
        notificationenabled: false,
        arrowback: true,
        title: "Report",
      ),
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          const SizedBox(height: 10),
          Card(
            margin: const EdgeInsets.only(top: 20),
            elevation: 4.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0)),
            child: Column(
              children: <Widget>[
                ListTile(
                  title: const Text(
                    "Class 11(2020-2021)",
                    style: TextStyle(
                      fontFamily: 'CenturyGothic',
                      color: Color(0xff0b82c3),
                      fontSize: 20,
                    ),
                  ),
                  trailing: const Icon(Icons.keyboard_arrow_right),
                  onTap: () {},
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: double.infinity,
                  height: 1.0,
                  color: Colors.grey.shade400,
                ),
                ListTile(
                  title: const Text(
                    "Class 12(2021-2022)",
                    style: TextStyle(
                      fontFamily: 'CenturyGothic',
                      color: Color(0xff0b82c3),
                      fontSize: 20,
                    ),
                  ),
                  trailing: const Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ReportPage()));
                  },
                ),
              ],
            ),
          )
        ],
      )));
}

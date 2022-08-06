import 'package:flutter/material.dart';
import 'package:goglobalschoolapp/page/About_Us.dart';
import 'package:goglobalschoolapp/page/Partners.dart';
import 'package:goglobalschoolapp/page/location.dart';
import 'package:goglobalschoolapp/page/notification.dart';
import 'package:goglobalschoolapp/widgets/appbar.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../login_screen.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: const CommonAppBar(
        notificationenabled: true,
        arrowback: false,
        title: "Setting",
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
                  leading:
                      const Icon(Icons.info_outline, color: Color(0xff0b82c3)),
                  title: const Text(
                    "About Us",
                    style: TextStyle(
                      fontFamily: 'CenturyGothic',
                    ),
                  ),
                  trailing: const Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AboutUs()));
                  },
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: double.infinity,
                  height: 1.0,
                  color: Colors.grey.shade400,
                ),
                ListTile(
                  leading: const Icon(Icons.location_on_sharp,
                      color: Color(0xff0b82c3)),
                  title: const Text(
                    "Location",
                    style: TextStyle(
                      fontFamily: 'CenturyGothic',
                    ),
                  ),
                  trailing: const Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LocationPage()));
                  },
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: double.infinity,
                  height: 1.0,
                  color: Colors.grey.shade400,
                ),
                ListTile(
                  leading:
                      const Icon(Icons.groups_sharp, color: Color(0xff0b82c3)),
                  title: const Text(
                    "Partners",
                    style: TextStyle(
                      fontFamily: 'CenturyGothic',
                    ),
                  ),
                  trailing: const Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Partners()));
                  },
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: double.infinity,
                  height: 1.0,
                  color: Colors.grey.shade400,
                ),
                ListTile(
                  leading: const Icon(Icons.logout, color: Color(0xff0b82c3)),
                  title: const Text(
                    "Logout",
                    style: TextStyle(
                      fontFamily: 'CenturyGothic',
                    ),
                  ),
                  trailing: const Icon(Icons.keyboard_arrow_right),
                  onTap: () async {
                    SharedPreferences sharedPreferences =
                        await SharedPreferences.getInstance();
                    await sharedPreferences.clear();
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()),
                        (route) => false);
                  },
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: double.infinity,
                  height: 1.0,
                  color: Colors.grey.shade400,
                ),
              ],
            ),
          )
        ],
      )));
}

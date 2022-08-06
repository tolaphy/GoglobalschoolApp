import 'package:flutter/material.dart';
import 'package:goglobalschoolapp/page/location.dart';
import 'package:goglobalschoolapp/page/notification.dart';
import 'package:goglobalschoolapp/page/report.dart';
import 'package:goglobalschoolapp/widgets/appbar.dart';
import 'package:goglobalschoolapp/widgets/forgetAppbar.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../login_screen.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: const CommonAppBar(
          title: "About Us",
          notificationenabled: false,
          arrowback: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 20,
                decoration: const BoxDecoration(
                    color: Colors.black,
                    gradient: LinearGradient(
                      colors: [(Color(0x00000001)), (Color(0x00000001))],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomLeft,
                    )),
              ),
              Container(
                margin: const EdgeInsets.only(right: 0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'images/who_we_are.png',
                      height: 200,
                    )),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, left: 10),
                child: const Text(
                  'Go Global School was created in 2015, but its history can be dated as far as 2013. In 2013, professor Lok Lundy and professor Chy Sangvath had come together with a group of other professors from Law Department and other departments to collect ideas and shares in starting up a company. With 62,600 shares collected, a company named Khmer Credits, a small loan company, had emerged and stayed successfully until now under the name of Go Credits. With the same group of shareholders, who had strong background and work in the education field, they want to improve the education system for their younger generations, where they can be recognised for their education quality internally and internationally. They once again came together and decided to create Go Global School. Go Global School was founded in 2015, and its first ever registration of students began in the 15th of March, 2015. On the 14th of July 2015, Go Global School had received its first legal Business Registration with 31,168 shares. There were only 40 students enroled back then, but now, there are 1200 students who are enroling in all three programmes.',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'CenturyGothic',
                    color: Color(0xff0b82c3),
                  ),
                  textAlign: TextAlign.justify,
                ),
              )
            ],
          ),
        ),
      );
}

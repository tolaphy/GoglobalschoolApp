import 'package:flutter/material.dart';
import 'package:goglobalschoolapp/page/location.dart';
import 'package:goglobalschoolapp/page/notification.dart';
import 'package:goglobalschoolapp/page/report.dart';
import 'package:goglobalschoolapp/widgets/appbar.dart';
import 'package:goglobalschoolapp/widgets/forgetAppbar.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../login_screen.dart';

class NewsDetail extends StatelessWidget {
  const NewsDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: const CommonAppBar(
          title: "Event Details",
          notificationenabled: false,
          arrowback: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 100,
                decoration: const BoxDecoration(
                    color: Colors.black,
                    gradient: LinearGradient(
                      colors: [(Color(0x00000001)), (Color(0x00000001))],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomLeft,
                    )),
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10, right: 300),
                      child: Column(
                        children: const <Widget>[
                          Text(
                            'News',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'CenturyGothic',
                              color: Color(0xff0b82c3),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      child: const Text(
                        'Parent-Teacher Meeting 2022',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'CenturyGothic',
                          color: Color(0xff0b82c3),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      child: const Text(
                        '2022-05-25',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'CenturyGothic',
                          color: Color(0xff0b82c3),
                        ),
                      ),
                    ),
                  ],
                )),
              ),
              Container(
                margin: const EdgeInsets.only(right: 0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'images/fd.jpeg',
                      height: 200,
                    )),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30, left: 10),
                child: const Text(
                  'This event provides parents with information about their childs grades, academic records, teacher recommendations, and suggestions, as well as the opportunity to provide feedback to help the school improve. In addition, this event is taking place to ensure that our students education, progress, and improvement are effective.',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'CenturyGothic',
                    color: Color(0xff0b82c3),
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'images/gh.jpeg',
                      height: 200,
                    )),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30, left: 10),
                child: const Text(
                  'Together with the parents, we share the same goal is to educate children to become international resources. We always prioritize the education and growth of students, providing assistance and making the learning experience as efficient as possible. We give students the knowledge they need and allow them to practice in actual situations, that will benefit their future studies and goals. Go Global School stays and helps students, parents, and legal guardians all the time.',
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

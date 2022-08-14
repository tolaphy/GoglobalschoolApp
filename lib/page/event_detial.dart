import 'package:flutter/material.dart';
import 'package:goglobalschoolapp/page/location.dart';
import 'package:goglobalschoolapp/page/notification.dart';
import 'package:goglobalschoolapp/page/report.dart';
import 'package:goglobalschoolapp/widgets/appbar.dart';
import 'package:goglobalschoolapp/widgets/forgetAppbar.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../login_screen.dart';

class EventDetail extends StatelessWidget {
  const EventDetail({Key? key}) : super(key: key);

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
                            '02 may 2022',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'CenturyGothic',
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: const Text(
                        'School is going for vacation in next month',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'CenturyGothic',
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                )),
              ),
              Container(
                margin: const EdgeInsets.only(right: 0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'images/1.jpeg',
                      height: 200,
                    )),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30, left: 10),
                child: const Text(
                  'Summer break is a school holiday that is observed for six to fourteen weeks, depending on the country. This  holiday is mostly observed by schools, meaning it only applies to students and the teaching staff. Typically, summer break starts at the end of May or mid-June and extends to August or early September in most countries. This holiday marks a break between school years and a break in the academic school year. In theUnited States, summer holidays coincide with the hottest months of the year, which makes it the most anticipated holiday in the school calendar.',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'CenturyGothic',
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.justify,
                ),
              )
            ],
          ),
        ),
      );
}

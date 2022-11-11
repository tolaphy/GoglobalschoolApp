import 'package:flutter/material.dart';
import 'package:goglobalschoolapp/page/location.dart';
import 'package:goglobalschoolapp/page/notification.dart';
import 'package:goglobalschoolapp/page/report.dart';
import 'package:goglobalschoolapp/widgets/appbar.dart';
import 'package:goglobalschoolapp/widgets/forgetAppbar.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../login_screen.dart';

class NewsDetail1 extends StatelessWidget {
  const NewsDetail1({Key? key}) : super(key: key);

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
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      child: const Text(
                        'The Private School',
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
                        '2021-09-27',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'CenturyGothic',
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                )),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30, left: 10),
                child: const Text(
                  'Within the education field, Principles and teachers have the same purpose make the young generations become the international human resource by providing knowledge to students as much as possible. More Than That, schools are divided into public schools and private schools. In this article, we would like to bring topic about private schools and one of a private school in Siem Reap name “Go Global School”. So what type of Go Global School and, How could parents or legal guardians rest assured their children study with the school?',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'CenturyGothic',
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'images/ps.jpeg',
                      height: 200,
                    )),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30, left: 10),
                child: const Text(
                  'Go Global School is a private school located in Siem Reap and has founded by a group of educational specialists who collectively hold over ten years of experience in the field. Our teachers are full of pedagogy and skills. In addition, each class are accompanied by at least one teaching assistant that is dedicated to help and provide differentiated learning; effectively challenge each student of various programmes. We offer smaller class sizes which allow the interaction more between teachers and students and give the opportunity for individual attention. Furthermore, the school increases safety and reliable security for students. We guarantee the students safety within the school and strictly rule not to go outside without permission. Parents and visitors who come into the school will have to wear visitor cards, and they have to report to the Information Office before they can walk around the campus. We also provide other services to our students included meal service, infirmary and transportation with hygiene and protection. Our students get knowledge within the school, such as learning through their class, student club and outside through field trips and other events. Parents or legal guardians could release your worry and regard your children with Go Global School. We will help your children become international human resources and provide a good study and staying environment.',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'CenturyGothic',
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ),
      );
}

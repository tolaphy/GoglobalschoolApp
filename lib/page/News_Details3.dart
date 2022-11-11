import 'package:flutter/material.dart';
import 'package:goglobalschoolapp/page/location.dart';
import 'package:goglobalschoolapp/page/notification.dart';
import 'package:goglobalschoolapp/page/report.dart';
import 'package:goglobalschoolapp/widgets/appbar.dart';
import 'package:goglobalschoolapp/widgets/forgetAppbar.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../login_screen.dart';

class NewsDetail3 extends StatelessWidget {
  const NewsDetail3({Key? key}) : super(key: key);

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
                        'Discount 40% for the New Academic Year 2021-2022',
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
                  'The situation of COVID-19 brings a lot of difficulties to everyone especially, parents and legal guardians. Even in this situation, parents and legal guardians still offer their children the knowledge, they needed. So, Go Global School would like to help you with their education by offering a 40% discount on school fees in each programme. The 2021-2022 Academic Year starts on the 18th of October 2021.',
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
                      'images/q5.png',
                      height: 200,
                    )),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30, left: 10),
                child: const Text(
                  'With a 40% discount on tuition fees for each programme, Go Global school still be your support and ensure everyone education, growth, and improvement with the care from our teachers and effective classes. Please check out the school fees on our website for more details in both the Khmer Programme and Foreign Language Programme. To get more information, please contact our school directly through phones or through our social media. Go Global School always stays and helps students, parents and legal guardians to ensure their knowledge without during their hardship in this Covid-19 situation.',
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

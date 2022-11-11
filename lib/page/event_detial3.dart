import 'package:flutter/material.dart';
import 'package:goglobalschoolapp/page/location.dart';
import 'package:goglobalschoolapp/page/notification.dart';
import 'package:goglobalschoolapp/page/report.dart';
import 'package:goglobalschoolapp/widgets/appbar.dart';
import 'package:goglobalschoolapp/widgets/forgetAppbar.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../../login_screen.dart';

class EventDetail3 extends StatelessWidget {
  const EventDetail3({Key? key}) : super(key: key);

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
                      margin: const EdgeInsets.only(top: 20),
                      child: const Text(
                        'ការប្រគល់សម្ភារៈសិក្សា ឆ្នាំសិក្សា ២០២២-២០២៣',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
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
                      'images/4.jpeg',
                      height: 600,
                    )),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30, left: 10),
                child: const Text(
                  'មាតាបិតា ឬអ្នកអាណាព្យាបាល ជាទីគោរព សាលាហ្គោគ្លូប៊ល មានកិត្តិយសសូមជូនដំណឹងស្ដីពីប្រគល់សម្ភារៈសិក្សា សម្រាប់ឆ្នាំសិក្សា ២០២២-២០២៣។ សូមអរគុណ!',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'CenturyGothic',
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: Column(
                  children: const <Widget>[
                    Text(
                      'Dear parents or legal guardians Go Global School would like to inform parents or legal guardians that the school will be available to supply with the 2022-2023 uniforms and study materials. Thank you!',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'CenturyGothic',
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}

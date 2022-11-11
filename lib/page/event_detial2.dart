import 'package:flutter/material.dart';
import 'package:goglobalschoolapp/page/location.dart';
import 'package:goglobalschoolapp/page/notification.dart';
import 'package:goglobalschoolapp/page/report.dart';
import 'package:goglobalschoolapp/widgets/appbar.dart';
import 'package:goglobalschoolapp/widgets/forgetAppbar.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../../login_screen.dart';

class EventDetail2 extends StatelessWidget {
  const EventDetail2({Key? key}) : super(key: key);

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
                        'ថ្នាក់កុំព្យូទ័រចុងសប្ដាហ៍',
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
                      'images/3.jpeg',
                      height: 250,
                    )),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30, left: 10),
                child: const Text(
                  'ការសិក្សាមូលដ្ឋានគ្រឹះកុំព្យូទ័រ ដើម្បីជំនួយដល់ការងារ និងសិក្សាស្រាវជ្រាវ។ ដោយអនុវត្ដលើ Typing និង Microsoft Word, Excel, Powerpoint ព្រមទាណងការរៀបចំឯកសាររដ្ឋបាលក្នុងការិយាល័យ។',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'CenturyGothic',
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, right: 380),
                child: Column(
                  children: const <Widget>[
                    Text(
                      'Sunday',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'CenturyGothic',
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, right: 280),
                child: Column(
                  children: const <Widget>[
                    Text(
                      '7:30am - 11:30am',
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

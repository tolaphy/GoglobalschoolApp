import 'package:flutter/material.dart';
import 'package:goglobalschoolapp/page/location.dart';
import 'package:goglobalschoolapp/page/notification.dart';
import 'package:goglobalschoolapp/page/report.dart';
import 'package:goglobalschoolapp/widgets/appbar.dart';
import 'package:goglobalschoolapp/widgets/forgetAppbar.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../login_screen.dart';

class Partners extends StatelessWidget {
  const Partners({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: const CommonAppBar(
          title: "Partners",
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
                padding: const EdgeInsets.all(10),
                child: Card(
                  elevation: 5,
                  //margin: const EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Image.asset(
                      'images/RAIH.png',
                      height: 80,
                    ),
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      child: Image.asset(
                        'images/AHC.jpeg',
                        height: 185,
                      ),
                    ),
                  ),
                  Container(
                    //margin: const EdgeInsets.only(right: 190),
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      child: Image.asset(
                        'images/CUB.png',
                        height: 185,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(right: 320),
                child: const Text(
                  'អ្នកផ្គត់ផ្គង់',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'CenturyGothic',
                    color: Color(0xff0b82c3),
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: Image.asset(
                      'images/IBC.png',
                      height: 100,
                    ),
                  ),
                  Container(
                    //margin: const EdgeInsets.only(left: 15),
                    child: Image.asset(
                      'images/LL.png',
                      height: 60,
                    ),
                  ),
                  Container(
                    //margin: const EdgeInsets.only(left: 15),
                    child: Image.asset(
                      'images/gr.png',
                      height: 150,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: Image.asset(
                      'images/UK.png',
                      height: 100,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: Image.asset(
                      'images/PAB.jpeg',
                      height: 110,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: Image.asset(
                      'images/PVBS.jpeg',
                      height: 110,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: Column(
                      children: [
                        Image.asset(
                          'images/makro.png',
                          height: 100,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: Image.asset(
                      'images/AIM.png',
                      height: 50,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Image.asset(
                            'images/PDH.jpeg',
                            height: 130,
                          ),
                        ],
                      )),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: Image.asset(
                      'images/lock.png',
                      height: 130,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: Image.asset(
                      'images/E.png',
                      height: 130,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}

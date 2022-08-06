import 'package:flutter/material.dart';
import 'package:goglobalschoolapp/page/location.dart';
import 'package:goglobalschoolapp/page/notification.dart';
import 'package:goglobalschoolapp/page/report.dart';
import 'package:goglobalschoolapp/widgets/appbar.dart';
import 'package:goglobalschoolapp/widgets/forgetAppbar.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../login_screen.dart';

class ForgetPass extends StatelessWidget {
  const ForgetPass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: const ForgetAppBar(
          title: "Forget Password",
          notificationenabled: false,
          arrowback: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 300,
                decoration: const BoxDecoration(
                    color: Color(0x00000001),
                    gradient: LinearGradient(
                      colors: [(Color(0x00000001)), (Color(0x00000001))],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    )),
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 100),
                      child: Column(
                        children: const <Widget>[
                          Text(
                            'Please Enter Your Email Address ',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'CenturyGothic',
                            ),
                          ),
                          Text(
                            'To Receive a Verification Code',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'CenturyGothic',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
              ),
              Container(
                margin: const EdgeInsets.only(right: 265),
                child: Column(
                  children: const <Widget>[
                    Text(
                      'Email Address',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'CenturyGothic',
                        color: Color(0xff707070),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10, right: 20, top: 20),
                padding: const EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey[200],
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(0, 20),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE),
                    )
                  ],
                ),
                alignment: Alignment.center,
                child: const TextField(
                    obscureText: true,
                    cursorColor: Color(0x00000001),
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.email,
                          color: Color(0xff0b82c3),
                        ),
                        hintText: "example@email.com",
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintStyle: TextStyle(fontFamily: 'CenturyGothic'))),
              ),
              GestureDetector(
                onTap: (() {}),
                child: Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  alignment: Alignment.center,
                  height: 54,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [(Color(0xFF1565C0)), (Color(0xFF1565C0))],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerLeft,
                    ),
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: Color(0xffEEEEEE),
                      )
                    ],
                  ),
                  child: const Text(
                    "Send",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'CenturyGothic',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:goglobalschoolapp/home_screen.dart';
import 'package:goglobalschoolapp/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = const Duration(seconds: 2);
    return new Timer(duration, loginRoute);
  }

  loginRoute() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const AuthCheck()));
  }

  @override
  Widget build(BuildContext context) {
    return initwidget();
  }

  Widget initwidget() {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: const Color(0x00000001),
                gradient: LinearGradient(
                  colors: [(new Color(0x00000001)), (new Color(0x00000001))],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )),
          ),
          Center(
            child: Container(
              child: Image.asset(
                "images/splash_screen.png",
              ),
            ),
          )
        ],
      ),
    );
  }
}

class AuthCheck extends StatefulWidget {
  const AuthCheck({Key? key}) : super(key: key);

  @override
  AuthCheckState createState() => AuthCheckState();
}

class AuthCheckState extends State<AuthCheck> {
  bool userAvailable = false;
  late SharedPreferences sharedPreferences;
  @override
  void initState() {
    super.initState();

    getCurrentUser();
  }

  void getCurrentUser() async {
    sharedPreferences = await SharedPreferences.getInstance();

    try {
      if (sharedPreferences.getString("email") != null) {
        setState(() {
          userAvailable = true;
        });
      }
    } catch (e) {
      setState(() {
        userAvailable = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return userAvailable ? const HomeScreen() : LoginScreen();
  }
}

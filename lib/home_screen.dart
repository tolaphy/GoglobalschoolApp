import 'package:flutter/material.dart';
import 'package:goglobalschoolapp/page/calendar_page.dart';
import 'package:goglobalschoolapp/page/home_page.dart';
import 'package:goglobalschoolapp/page/news_page.dart';
import 'package:goglobalschoolapp/page/setting_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int myIndex = 0;
  final screens = [
    const HomePage(),
    const CalendarPage(),
    NewsPage(),
    const SettingPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[myIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: myIndex,
          onTap: (index) => setState(() => myIndex = index),
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          unselectedItemColor: const Color(0xff0b82c3),
          showSelectedLabels: true,
          selectedItemColor: const Color(0xff0b82c3),
          unselectedLabelStyle: const TextStyle(
            fontFamily: 'CenturyGothic',
          ),
          //selectedItemColor: Colors.white,
          //unselectedItemColor: Colors.white,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month), label: 'Calendar'),
            BottomNavigationBarItem(
                icon: Icon(Icons.newspaper_sharp), label: 'News'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Setting'),
          ]),
    );
  }
}

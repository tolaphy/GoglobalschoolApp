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
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                activeIcon: Icon(Icons.home_outlined),
                label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              activeIcon: Icon(Icons.calendar_month_outlined),
              label: 'Calendar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.newspaper),
              activeIcon: Icon(Icons.newspaper_outlined),
              label: 'News',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              activeIcon: Icon(Icons.settings_outlined),
              label: 'Setting',
            ),
          ]),
    );
  }
}

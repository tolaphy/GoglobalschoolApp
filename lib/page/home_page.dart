import 'package:flutter/material.dart';
import 'package:goglobalschoolapp/page/Schedule.dart';
import 'package:goglobalschoolapp/page/Score.dart';
import 'package:goglobalschoolapp/page/attendance_page.dart';
import 'package:goglobalschoolapp/page/event.dart';
import 'package:goglobalschoolapp/page/profile_page.dart';
import 'package:goglobalschoolapp/page/report.dart';
import 'package:goglobalschoolapp/page/schoolfee.dart';
import 'package:goglobalschoolapp/widgets/appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Card _MenuCard(String title, String imgpath, Color boxcolor) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'images/${imgpath}',
            height: 80,
            color: boxcolor,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        notificationenabled: true,
        arrowback: false,
        title: "Home",
      ),
      body: Stack(children: <Widget>[
        const SizedBox(
          width: double.infinity,
          height: 200,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
        ),
        SafeArea(
          child: Column(
            children: <Widget>[
              //Center(
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfilePage()));
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 50),
                  height: 82,
                  width: 391,
                  decoration: BoxDecoration(
                    color: const Color(0xff0b82c3),
                    borderRadius: BorderRadius.circular(41),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const CircleAvatar(
                        backgroundImage: AssetImage('images/Profile.png'),
                        radius: 50,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const <Widget>[
                          Text(
                            "PHY TOLA",
                            style: TextStyle(
                              fontFamily: 'CenturyGothic',
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Class 12A",
                            style: TextStyle(
                              fontFamily: 'CenturyGothic',
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),

              const SizedBox(
                height: 50,
                //width: 100,
              ),
              Expanded(
                  child: GridView.count(
                crossAxisCount: 3,
                //crossAxisSpacing: 5.0,
                mainAxisSpacing: 40,
                children: <Widget>[
                  GestureDetector(
                      onTap: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const AttendancePage())),
                          },
                      child: _MenuCard('Attendance', 'attendance.png',
                          const Color(0xff12663b))),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ScorePage()));
                      },
                      child: _MenuCard(
                          'Score', 'score.png', const Color(0xffec2777))),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SchedulePage()));
                      },
                      child: _MenuCard(
                          'Schedule', 'schedule.png', const Color(0xffedbd1d))),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SchoolFeePage()));
                      },
                      child: _MenuCard('School Fees', 'schoolfee.png',
                          const Color(0xffa7499a))),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const EventPage()));
                      },
                      child: _MenuCard(
                          'Event', 'event.png', const Color(0xff653413))),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ReportPage()));
                      },
                      child: _MenuCard(
                          'Report', 'report.png', const Color(0xffdb2127))),
                ],
              ))
            ],
          ),
        )
      ]),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:goglobalschoolapp/page/Schedule.dart';
import 'package:goglobalschoolapp/page/Score.dart';
import 'package:goglobalschoolapp/page/attendance_page.dart';
import 'package:goglobalschoolapp/page/class_report.dart';
import 'package:goglobalschoolapp/page/event.dart';
import 'package:goglobalschoolapp/page/profile_page.dart';
import 'package:goglobalschoolapp/page/report.dart';
import 'package:goglobalschoolapp/page/schoolfee.dart';
import 'package:goglobalschoolapp/widgets/appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Container _MenuCard(String imgpath, Color boxcolor, String name) {
    return Container(
      child: Card(
        elevation: 5,
        margin: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(
              'images/${imgpath}',
              height: 70,
              color: boxcolor,
            ),
            Text(
              name,
              style: const TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
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
          height: 230,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: AssetImage('images/bgprofile.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SafeArea(
          child: Column(
            children: <Widget>[
              //Center(
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfilePage()));
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
                height: 130,

                //width: 100,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 420,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    colorFilter: ColorFilter.mode(
                        Colors.white.withOpacity(0.2), BlendMode.dstATop),
                    image: const AssetImage(
                      'images/logo1.png',
                    ),
                  ),
                ),
                child: Expanded(
                  child: GridView.count(
                    crossAxisCount: 3,

                    //crossAxisSpacing: 5.0,
                    mainAxisSpacing: 50,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const AttendancePage())),
                        },
                        child: _MenuCard('attendance.png',
                            const Color(0xff12663b), "Attendance"),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ScorePage()));
                        },
                        child: _MenuCard(
                            'score.png', const Color(0xffec2777), "Score"),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SchedulePage()));
                        },
                        child: _MenuCard('schedule.png',
                            const Color(0xffedbd1d), "Schedule"),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SchoolFeePage()));
                        },
                        child: _MenuCard('schoolfee.png',
                            const Color(0xffa7499a), "SchoolFees"),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const EventPage()));
                        },
                        child: _MenuCard(
                            'event.png', const Color(0xff653413), "Event"),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Class_report()));
                        },
                        child: _MenuCard(
                            'report.png', const Color(0xffdb2127), "Report"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}

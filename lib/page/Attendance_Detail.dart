import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goglobalschoolapp/page/notification.dart';
import 'package:goglobalschoolapp/widgets/appbar.dart';

import 'package:table_calendar/table_calendar.dart';

class AttendanceDetail extends StatelessWidget {
  const AttendanceDetail({Key? key}) : super(key: key);
  Container tasklists(
    String month,
    String value1,
    String value2,
    String value3,
  ) {
    return Container(
      margin: const EdgeInsets.only(left: 5, top: 10),
      child: Card(
        elevation: 5,
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
                height: 75,
                width: 413,
                margin: const EdgeInsets.only(top: 10),

                // padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                  border: Border.all(
                    color: Colors.white,
                  ),
                  color: Colors.white,
                ),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,

                  children: <Widget>[
                    Container(
                      child: Text(
                        month,
                        style: const TextStyle(
                          fontFamily: 'CenturyGothic',
                          color: Color(0xff12663b),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Text(
                      value1,
                      style: const TextStyle(
                        fontFamily: 'CenturyGothic',
                        color: Color(0xffec2777),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      value2,
                      style: const TextStyle(
                        fontFamily: 'CenturyGothic',
                        color: Color(0xffedbd1d),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      value3,
                      style: const TextStyle(
                        fontFamily: 'CenturyGothic',
                        color: Color(0xffdb2127),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: const CommonAppBar(
          notificationenabled: false,
          arrowback: true,
          title: "Attendance Detail",
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 10,
                ),
                TableCalendar(
                  focusedDay: DateTime.now(),
                  firstDay: DateTime(2000),
                  lastDay: DateTime(2050),
                  startingDayOfWeek: StartingDayOfWeek.monday,
                  calendarStyle: const CalendarStyle(
                      selectedTextStyle: TextStyle(color: Colors.white),
                      todayDecoration: BoxDecoration(
                        color: Color(0xffedbd1d),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      )),
                  headerStyle: const HeaderStyle(
                    formatButtonVisible: false,
                    titleCentered: false,
                    headerMargin: EdgeInsets.only(left: 15),
                    leftChevronVisible: false,
                    rightChevronVisible: false,
                    titleTextStyle: TextStyle(
                      fontSize: 20,
                      fontFamily: 'CenturyGothic',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  //padding: const EdgeInsets.only(left: 20),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              // margin: const EdgeInsets.only(left: 5),
                              child: const Text(
                                'MONTH',
                                style: TextStyle(
                                  color: Color(0xff0b82c3),
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Container(
                              child: const Text(
                                'PRESENT',
                                style: TextStyle(
                                  color: Color(0xff0b82c3),
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Container(
                              child: const Text(
                                'ABSENT',
                                style: TextStyle(
                                  color: Color(0xff0b82c3),
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Container(
                              child: const Text(
                                'PERMISSION',
                                style: TextStyle(
                                  color: Color(0xff0b82c3),
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(top: 30),
                          child: tasklists(
                            'MAY',
                            '24',
                            '1',
                            '3',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}

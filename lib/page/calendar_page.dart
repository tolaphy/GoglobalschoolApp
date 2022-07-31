import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goglobalschoolapp/page/notification.dart';
import 'package:goglobalschoolapp/widgets/appbar.dart';

import 'package:table_calendar/table_calendar.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({Key? key}) : super(key: key);

  Container tasklists(
    String day,
    String month,
    String title,
    String description,
    Color boxcolor,
  ) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
                height: 70,
                width: 65,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xffec2777),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      day,
                      style: const TextStyle(
                        fontFamily: 'CenturyGothic',
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      month,
                      style: const TextStyle(
                        fontFamily: 'CenturyGothic',
                        color: Colors.white,
                      ),
                    ),
                  ],
                )),
            Container(
                height: 70,
                width: 300,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: boxcolor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: const TextStyle(
                        fontFamily: 'CenturyGothic',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      description,
                      style: const TextStyle(
                        fontFamily: 'CenturyGothic',
                        fontSize: 14,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                )),
          ]),
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: const CommonAppBar(
          notificationenabled: true,
          arrowback: false,
          title: "Calendar",
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
                        color: Color(0xffec2777),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      )),
                  headerStyle: const HeaderStyle(
                    formatButtonVisible: false,
                    titleCentered: true,
                    leftChevronIcon: Icon(
                      Icons.keyboard_arrow_left,
                      color: Color(0xff653413),
                      size: 28,
                    ),
                    rightChevronIcon: Icon(
                      Icons.keyboard_arrow_right,
                      color: Color(0xff653413),
                      size: 28,
                    ),
                    titleTextStyle: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'CenturyGothic',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    color: Color(0xff30384c),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          tasklists(
                            '01',
                            'MAY',
                            'National Day',
                            'Holiday',
                            const Color(0xffa7499a),
                          ),
                          tasklists(
                            '10',
                            'MAY',
                            'Summer Holiday Event',
                            'Event',
                            const Color(0xffedbd1d),
                          ),
                          tasklists(
                            '16',
                            'MAY',
                            'National Day',
                            'Holiday',
                            const Color(0xff12663b),
                          ),
                          tasklists(
                            '25',
                            'MAY',
                            'National Day',
                            'Holiday',
                            const Color(0xff3f4195),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
}

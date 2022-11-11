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
                // margin: const EdgeInsets.only(right: 10),
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
                width: 350,
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
                  //padding: const EdgeInsets.only(left: 20),
                  // width: MediaQuery.of(context).size.width,
                  //height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Stack(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          tasklists(
                            '01',
                            'Jan',
                            'New Year Holiday',
                            '',
                            const Color(0xffa7499a),
                          ),
                          tasklists(
                            '7',
                            'Jan',
                            'Victory over Genocide Day',
                            '',
                            const Color(0xffedbd1d),
                          ),
                          tasklists(
                            '16',
                            'Jan',
                            'Trimester I Examination - Foreign Language Programme',
                            '',
                            const Color(0xff12663b),
                          ),
                          tasklists(
                            '20',
                            'Jan',
                            'Trimester II Starts - Foreign Language Programme',
                            '',
                            const Color(0xff3f4195),
                          ),
                          tasklists(
                            '23',
                            'Jan',
                            'Trmester I FLP Field Trip',
                            '',
                            const Color(0xffa7499a),
                          ),
                          tasklists(
                            '12',
                            'Feb',
                            '1st Parents and Teachers Meeting',
                            '',
                            const Color(0xffedbd1d),
                          ),
                          tasklists(
                            '06',
                            'Mar',
                            'Semester I Khmer Programme Field Trip',
                            '',
                            const Color(0xff12663b),
                          ),
                          tasklists(
                            '08',
                            'Mar',
                            'International Women Day',
                            '',
                            const Color(0xff3f4195),
                          ),
                          tasklists(
                            '20',
                            'Mar',
                            'Semester I Examination- Khmer Programme',
                            '',
                            const Color(0xffa7499a),
                          ),
                          tasklists(
                            '25',
                            'Mar',
                            'Semester II Starts - Khmer Programme',
                            '',
                            const Color(0xffedbd1d),
                          ),
                          tasklists(
                            '02',
                            'Apr',
                            "Monks' Offering Day at School",
                            '',
                            const Color(0xff12663b),
                          ),
                          tasklists(
                            '08',
                            'Apr',
                            'Go Global Sangranta',
                            '',
                            const Color(0xff3f4195),
                          ),
                          tasklists(
                            '10',
                            'Apr',
                            'Semester Break Starts',
                            '',
                            const Color(0xffa7499a),
                          ),
                          tasklists(
                            '14',
                            'Apr',
                            'Khmer New Year Day',
                            '',
                            const Color(0xffedbd1d),
                          ),
                          tasklists(
                            '16',
                            'Apr',
                            "Semester Break Ends",
                            '',
                            const Color(0xff12663b),
                          ),
                          tasklists(
                            '17',
                            'Apr',
                            '1st day after Semester Break',
                            '',
                            const Color(0xff3f4195),
                          ),
                          tasklists(
                            '01',
                            'May',
                            'International Labour Day',
                            '',
                            const Color(0xffa7499a),
                          ),
                          tasklists(
                            '04',
                            'May',
                            'Visak Bochea Day',
                            '',
                            const Color(0xffedbd1d),
                          ),
                          tasklists(
                            '08',
                            'May',
                            "Royal Ploughing Ceremony Day",
                            '',
                            const Color(0xff12663b),
                          ),
                          tasklists(
                            '14',
                            'May',
                            "King Norodom Sihnamoni's Birthday",
                            '',
                            const Color(0xff3f4195),
                          ),
                          tasklists(
                            '15',
                            'May',
                            'Trimester II Examination - Foreign Language Programme',
                            '',
                            const Color(0xffa7499a),
                          ),
                          tasklists(
                            '19',
                            'May',
                            'Trimester III Starts - Foreign Language Programme',
                            '',
                            const Color(0xffedbd1d),
                          ),
                          tasklists(
                            '22',
                            'May',
                            "Trimester II FLP Field Trip",
                            '',
                            const Color(0xff12663b),
                          ),
                          tasklists(
                            '18',
                            'Jun',
                            "Queen Mother's Birthday",
                            '',
                            const Color(0xff3f4195),
                          ),
                          tasklists(
                            '17',
                            'Jul',
                            'Trimester III FLP Field Trip',
                            '',
                            const Color(0xffa7499a),
                          ),
                          tasklists(
                            '24',
                            'Jul',
                            'Semester II Khmer Programme Field Trip',
                            '',
                            const Color(0xffedbd1d),
                          ),
                          tasklists(
                            '07',
                            'Aug',
                            "Trimester III Examination - Foreign Language Programme",
                            '',
                            const Color(0xff12663b),
                          ),
                          tasklists(
                            '14',
                            'Aug',
                            "Semester II Examination - Khmer Programme",
                            '',
                            const Color(0xff3f4195),
                          ),
                          tasklists(
                            '21',
                            'Aug',
                            'Foreign Laguage Programme Stage Assessments',
                            '',
                            const Color(0xffa7499a),
                          ),
                          tasklists(
                            '27',
                            'Aug',
                            '2nd Parents and Teachers Meeting',
                            '',
                            const Color(0xffedbd1d),
                          ),
                          tasklists(
                            '31',
                            'Aug',
                            "Last School Day for 2022-2023 Academic Year",
                            '',
                            const Color(0xff12663b),
                          ),
                          tasklists(
                            '01',
                            'Sep',
                            "2023-2024 Enrolment Starts",
                            '',
                            const Color(0xff3f4195),
                          ),
                          tasklists(
                            '11',
                            'Sep',
                            'Summer Programme Starts',
                            '',
                            const Color(0xffa7499a),
                          ),
                          tasklists(
                            '24',
                            'Sep',
                            'Constitution Day',
                            '',
                            const Color(0xffedbd1d),
                          ),
                          tasklists(
                            '24',
                            'Sep',
                            "Pchum Ben Holiday",
                            '',
                            const Color(0xff12663b),
                          ),
                          tasklists(
                            '15',
                            'Oct',
                            "King Father's Commemoration Day",
                            '',
                            const Color(0xff3f4195),
                          ),
                          tasklists(
                            '20',
                            'Oct',
                            'Summer Programme Ends',
                            '',
                            const Color(0xffa7499a),
                          ),
                          tasklists(
                            '24',
                            'Oct',
                            "King's Coronation Day",
                            '',
                            const Color(0xffedbd1d),
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

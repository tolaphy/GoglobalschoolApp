import 'package:flutter/material.dart';

class ThursdayPage extends StatelessWidget {
  const ThursdayPage({Key? key}) : super(key: key);

  Container tasklists(
    String subject,
    String time,
    String teachername,
    String period,
    Color boxcor,
  ) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              height: 140,
              width: 400,
              margin: const EdgeInsets.only(left: 0),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: boxcor),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    subject,
                    style: const TextStyle(
                      fontFamily: 'CenturyGothic',
                      fontSize: 25,
                      color: Color(0xff0b82c3),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    time,
                    style: const TextStyle(
                      fontFamily: 'CenturyGothic',
                      color: Color(0xff0b82c3),
                      fontSize: 16,
                    ),
                  ),
                  Divider(
                    color: boxcor,
                    height: 25,
                    thickness: 1,
                    indent: 0,
                    endIndent: 0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        teachername,
                        style: const TextStyle(
                          fontFamily: 'CenturyGothic',
                          color: Color(0xff0b82c3),
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        period,
                        style: const TextStyle(
                          fontFamily: 'CenturyGothic',
                          color: Color(0xff0b82c3),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                ],
              )),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //ListView.builder(itemBuilder: (context, index) { return .....})
        body: ListView(
      children: <Widget>[
        tasklists(
          'Khmer',
          '7:00am - 7:45am',
          'Chann KeoSey',
          'Period1',
          const Color(0xffdb2127),
        ),
        tasklists(
          'English',
          '8:00am - 8:45am',
          'Chann KeoSey',
          'Period1',
          const Color(0xffedbd1d),
        ),
        tasklists(
          'Math',
          '9:00am - 9:45am',
          'Chann KeoSey',
          'Period1',
          const Color(0xffa7499a),
        ),
        tasklists(
          'Biology',
          '10:00am - 10:45am',
          'Chann KeoSey',
          'Period1',
          const Color(0xff12663b),
        ),
        tasklists(
          'History',
          '1:00am - 1:45am',
          'Chann KeoSey',
          'Period1',
          const Color(0xff653413),
        ),
      ],
    ));
  }
}

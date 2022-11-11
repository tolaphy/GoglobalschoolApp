import 'package:flutter/material.dart';

class WednesdayPage extends StatelessWidget {
  const WednesdayPage({Key? key}) : super(key: key);

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
                      color: Colors.black,
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
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        period,
                        style: const TextStyle(
                          fontFamily: 'CenturyGothic',
                          color: Colors.black,
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
          'Chinese',
          '13:30 - 14:10',
          'Sim Lyly',
          "",
          const Color(0xffdb2127),
        ),
        tasklists(
          'Mathematics',
          '14:15 - 15:00',
          'Christo Schenck',
          '',
          const Color(0xffedbd1d),
        ),
        tasklists(
          'Mathematics',
          '15:20 - 16:05',
          'Christo Schenck',
          '',
          const Color(0xffa7499a),
        ),
        tasklists(
          'English',
          '16:10 - 16:50',
          'Melina Cynthia Bot',
          '',
          const Color(0xff12663b),
        ),
        tasklists(
          'English',
          '16:50 - 17:30',
          'Melina Cynthia Bot',
          '',
          const Color(0xff653413),
        ),
      ],
    ));
  }
}

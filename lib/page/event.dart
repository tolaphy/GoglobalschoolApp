import 'package:flutter/material.dart';
import 'package:goglobalschoolapp/page/event_detial.dart';

import 'package:goglobalschoolapp/widgets/appbar.dart';
import 'package:goglobalschoolapp/widgets/profile.dart';

class EventPage extends StatefulWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  EventPageState createState() => EventPageState();
}

Container tasklists(
  Color boxcolor,
  String imgpath,
  String title,
  String date,
) {
  return Container(
    padding: const EdgeInsets.all(0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
            height: 199,
            width: 202,
            margin: const EdgeInsets.only(left: 0),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                color: Colors.white,
                border: Border.all(color: boxcolor)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'images/${imgpath}',
                      height: 70,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          title,
                          style: const TextStyle(
                            fontFamily: 'CenturyGothic',
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Text(
                        date,
                        style: const TextStyle(
                          fontFamily: 'CenturyGothic',
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ],
    ),
  );
}

class EventPageState extends State<EventPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        notificationenabled: false,
        arrowback: true,
        title: "Events",
      ),
      body: Column(
        children: [
          const SizedBox(
            width: double.infinity,
            height: 230,
            child: Profile(),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 10,
            child: GridView.count(
              crossAxisCount: 2,
              //mainAxisSpacing: 5,
              children: <Widget>[
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EventDetail())),
                  child: tasklists(
                    const Color(0xffec2777),
                    '1.jpeg',
                    'School is going for vacation in next month',
                    '02 may 2022',
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EventDetail())),
                  child: tasklists(
                    const Color(0xffa7499a),
                    '2.jpeg',
                    'School is going for vacation in next month',
                    '02 may 2022',
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EventDetail())),
                  child: tasklists(
                    const Color(0xffedbd1d),
                    '3.jpeg',
                    'School is going for vacation in next month',
                    '02 may 2022',
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EventDetail())),
                  child: tasklists(
                    const Color(0xff12663b),
                    '1.jpeg',
                    'School is going for vacation in next month',
                    '02 may 2022',
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

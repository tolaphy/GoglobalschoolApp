import 'package:flutter/material.dart';

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
                            color: Color(0xff0b82c3),
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
                          color: Color(0xff0b82c3),
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
            height: 200,
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
                children: List.generate(4, (index) {
                  return tasklists(
                      index % 2 == 0
                          ? const Color(0xffa7499a)
                          : const Color(0xffec2777),
                      index % 2 == 0 ? '1.jpeg' : '3.jpeg',
                      'School is going for vacation in next month. ',
                      '02 March 2022');
                })),
          )
        ],
      ),
    );
  }
}

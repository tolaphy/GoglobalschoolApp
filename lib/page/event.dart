import 'package:flutter/material.dart';
import 'package:goglobalschoolapp/page/event_detial.dart';
import 'package:goglobalschoolapp/page/event_detial1.dart';
import 'package:goglobalschoolapp/page/event_detial2.dart';
import 'package:goglobalschoolapp/page/event_detial3.dart';

import 'package:goglobalschoolapp/widgets/appbar.dart';
import 'package:goglobalschoolapp/widgets/profile.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

String Get_Event = """
query GetEvents(\$academicYearId: ID) {
  getEvents(academicYearId: \$academicYearId) {
    _id
    eventName
    eventNameKhmer
    eventDate
    academicYearId {
      _id
      academicYear
      status
      note
    }
  }
}

"""
    .replaceAll('\n', '');

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
                      height: 100,
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
                            fontSize: 14,
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
      // body: Query(options: QueryOptions(document: gql(Get_Event),),
      //   builder: (QueryResult.(result, {fetchMore, refetch}) {
      //     if(result.has)
      //   }),
      // )
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
                    'PUBLIC HOLIDAY ANNOUNCEMENT',
                    '',
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EventDetail1())),
                  child: tasklists(
                    const Color(0xffa7499a),
                    '2.jpeg',
                    'Welcome to the new academic year',
                    '',
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EventDetail2())),
                  child: tasklists(
                    const Color(0xffedbd1d),
                    '3.jpeg',
                    'ថ្នាក់កុំព្យូទ័រចុងសប្ដាហ៍',
                    '',
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EventDetail3())),
                  child: tasklists(
                    const Color(0xff12663b),
                    '4.jpeg',
                    'ការប្រគល់សម្ភារៈសិក្សា ឆ្នាំសិក្សា ២០២២-២០២៣',
                    '',
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

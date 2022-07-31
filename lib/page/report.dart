import 'package:flutter/material.dart';

import 'package:goglobalschoolapp/widgets/appbar.dart';
import 'package:goglobalschoolapp/widgets/profile.dart';

class ReportPage extends StatefulWidget {
  const ReportPage({Key? key}) : super(key: key);

  @override
  ReportPageState createState() => ReportPageState();
}

Container attendancelists(
  String day,
  String details,
) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 100,
          width: 408,
          margin: const EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
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
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Text(
                details,
                style: const TextStyle(
                  fontFamily: 'CenturyGothic',
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Container maintasklists(
  String subject,
  String score,
) {
  return Container(
    padding: const EdgeInsets.only(top: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 50,
          width: 408,
          margin: const EdgeInsets.only(left: 10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
            color: const Color(0xffec2777),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                subject,
                style: const TextStyle(
                  fontFamily: 'CenturyGothic',
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Text(
                score,
                style: const TextStyle(
                  fontFamily: 'CenturyGothic',
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Container subtasklists(
  String subject,
  String score,
) {
  return Container(
    padding: const EdgeInsets.only(top: 0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 45,
          width: 408,
          margin: const EdgeInsets.only(left: 10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
            color: const Color(0xffedbd1d),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                subject,
                style: const TextStyle(
                  fontFamily: 'CenturyGothic',
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Text(
                score,
                style: const TextStyle(
                  fontFamily: 'CenturyGothic',
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Container totaltask(
  String total,
  String totalScore,
) {
  return Container(
    padding: const EdgeInsets.only(top: 0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 45,
          width: 408,
          margin: const EdgeInsets.only(left: 10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
            color: const Color(0xffa7499a),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                total,
                style: const TextStyle(
                  fontFamily: 'CenturyGothic',
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Text(
                totalScore,
                style: const TextStyle(
                  fontFamily: 'CenturyGothic',
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

class ReportPageState extends State<ReportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        notificationenabled: false,
        arrowback: true,
        title: "Reports",
      ),
      body: Column(
        children: [
          const SizedBox(
            width: double.infinity,
            height: 200,
            child: Profile(),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.only(top: 10),
              children: <Widget>[
                Center(
                  child: Text(
                    'Attendance'.toUpperCase(),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                const Divider(
                  color: Colors.black,
                  height: 40,
                  thickness: 2,
                  indent: 8,
                  endIndent: 8,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  child: const Text(
                    'Semester I',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                attendancelists(
                    '175/180 Days', 'Total attendance of the student'),
                Container(
                  margin: const EdgeInsets.only(left: 15, top: 10),
                  child: const Text(
                    'Semester II',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                attendancelists(
                    '175/180 Days', 'Total attendance of the student'),
                const Divider(
                  color: Colors.black,
                  height: 40,
                  thickness: 2,
                  indent: 8,
                  endIndent: 8,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Text(
                    'Academic Performance '.toUpperCase(),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Divider(
                  color: Colors.black,
                  height: 50,
                  thickness: 2,
                  indent: 8,
                  endIndent: 8,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  child: const Text(
                    'Semester I',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                //
                maintasklists('Subject', "Score"),
                //ListView.builder(itemBuilder: (context, index) { return .....})
                subtasklists('Khmer', '100'),
                subtasklists('English', '100'),
                subtasklists('Math', '100'),
                subtasklists('Biology', '100'),
                subtasklists('History', '100'),
                subtasklists('Khmer', '100'),
                subtasklists('Khmer', '100'),
                //
                totaltask('Total', '100'),
                Container(
                  margin: const EdgeInsets.only(left: 15, top: 15),
                  child: const Text(
                    'Semester II',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                //
                maintasklists('Subject', "Score"),
                // //ListView.builder(itemBuilder: (context, index) { return .....})
                subtasklists('Khmer', '100'),
                subtasklists('English', '100'),
                subtasklists('Math', '100'),
                subtasklists('Biology', '100'),
                subtasklists('History', '100'),
                subtasklists('Khmer', '100'),
                subtasklists('Khmer', '100'),
                //
                totaltask('Total', '100')
              ],
            ),
          ),
        ],
      ),
    );
  }
}

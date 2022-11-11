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
          height: 75,
          width: 405,
          margin: const EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(
              color: const Color(0xffec2777),
              width: 1,
            ),
            color: Colors.white,
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
                  color: Colors.black,
                ),
              ),
              Text(
                details,
                style: const TextStyle(
                  fontFamily: 'CenturyGothic',
                  fontSize: 20,
                  color: Colors.black,
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
          width: 380,
          margin: const EdgeInsets.only(left: 4),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
            //color: const Color(0xffec2777),
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
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                score,
                style: const TextStyle(
                  fontFamily: 'CenturyGothic',
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
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
    child: Card(
      elevation: 2.5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 45,
            width: 380,
            margin: const EdgeInsets.only(left: 4),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              //color: const Color(0xffedbd1d),
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
                    color: Colors.black,
                  ),
                ),
                Text(
                  score,
                  style: const TextStyle(
                    fontFamily: 'CenturyGothic',
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Container totaltask(
  String total,
  String totalScore,
) {
  return Container(
    padding: const EdgeInsets.only(top: 0),
    child: Card(
      elevation: 2.5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 45,
            width: 380,
            margin: const EdgeInsets.only(left: 4),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              //color: const Color(0xffa7499a),
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
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  totalScore,
                  style: const TextStyle(
                    fontFamily: 'CenturyGothic',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffdb2127),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Container avaragetask(
  String avarage,
  String avarageScore,
) {
  return Container(
    padding: const EdgeInsets.only(top: 0),
    child: Card(
      elevation: 2.5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 45,
            width: 380,
            margin: const EdgeInsets.only(left: 4),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              //color: const Color(0xffa7499a),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  avarage,
                  style: const TextStyle(
                    fontFamily: 'CenturyGothic',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff0b82c3),
                  ),
                ),
                Text(
                  avarageScore,
                  style: const TextStyle(
                    fontFamily: 'CenturyGothic',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Container gradetask(
  String grade,
  String gradeScore,
) {
  return Container(
    padding: const EdgeInsets.only(top: 0),
    child: Card(
      elevation: 2.5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 45,
            width: 380,
            margin: const EdgeInsets.only(left: 4),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              //color: const Color(0xffa7499a),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  grade,
                  style: const TextStyle(
                    fontFamily: 'CenturyGothic',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff0b82c3),
                  ),
                ),
                Text(
                  gradeScore,
                  style: const TextStyle(
                    fontFamily: 'CenturyGothic',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffedbd1d),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Container details() {
  return Container(
    margin: const EdgeInsets.only(top: 10, left: 25),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          "-NOTE",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Container(
          child: Row(
            children: const <Widget>[
              Text(
                "A",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xffdb2127),
                ),
              ),
              Text(
                " ល្អណាស់",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xff0b82c3),
                ),
              ),
              Text(
                "              B",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xffedbd1d),
                ),
              ),
              Text(
                " ល្អប្រសើរ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xff0b82c3),
                ),
              ),
              Text(
                "              B",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xff12663b),
                ),
              ),
              Text(
                " ល្អ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xff0b82c3),
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Row(
            children: const <Widget>[
              Text(
                "D",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xffec2777),
                ),
              ),
              Text(
                " ល្អបង្គួរ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xff0b82c3),
                ),
              ),
              Text(
                "                  E",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xffa7499a),
                ),
              ),
              Text(
                " មធ្យម",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xff0b82c3),
                ),
              ),
              Text(
                "                    F",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xffdb2127),
                ),
              ),
              Text(
                " ធ្លាក់",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xff0b82c3),
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
        title: "Class 12(2021-2022)",
      ),
      body: Column(
        children: [
          const SizedBox(
            width: double.infinity,
            height: 230,
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
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                const Divider(
                  color: Colors.black,
                  height: 40,
                  thickness: 2,
                  indent: 8,
                  endIndent: 8,
                ),
                const Center(
                  child: Text(
                    'Semester I',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
                attendancelists('8 Days', 'Total absent of the student'),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: const Center(
                    child: Text(
                      'Semester II',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                attendancelists('12 Days', 'Total absent of the student'),
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
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
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
                const Center(
                  child: Text(
                    'Semester I',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
                //
                maintasklists('Month', "Score"),
                //ListView.builder(itemBuilder: (context, index) { return .....})
                //ListView.builder(itemBuilder: (context, index) { return .....})
                subtasklists('Nov', '9,1'),
                subtasklists('Dec', '7,3'),
                subtasklists('Jan', '9,12'),
                subtasklists('Feb', '8,9'),
                subtasklists('Mar', '8,0'),

                //
                //
                avaragetask('Avarage', '8,484'),
                //
                gradetask('Grade', 'A'),

                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: const Center(
                    child: Text(
                      'Semester II',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                //
                maintasklists('Month', "Score"),
                //ListView.builder(itemBuilder: (context, index) { return .....})
                //ListView.builder(itemBuilder: (context, index) { return .....})
                subtasklists('Jun', '9,1'),
                subtasklists('July', '8.11'),
                subtasklists('Aug', '8,7'),
                subtasklists('Sep', '8,17'),
                subtasklists('Sep', '9,7'),

                //
                //
                avaragetask('Avarage', '8,756'),
                //
                gradetask('Grade', 'A'),
                //
                details(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

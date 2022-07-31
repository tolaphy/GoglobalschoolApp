import 'package:flutter/material.dart';
import 'package:goglobalschoolapp/page/profile_page.dart';
import 'package:goglobalschoolapp/widgets/appbar.dart';
import 'package:goglobalschoolapp/widgets/profile.dart';

class ScorePage extends StatefulWidget {
  @override
  ScorePageState createState() => ScorePageState();
}

final years = ['2021', '2022'];
final months = [
  'January',
  'February',
  'March',
  'April',
  'May',
  'June',
  'July',
  'August',
  'September',
  'October',
  'November',
  'December'
];
DropdownMenuItem<String> buildMenuItem(String year) => DropdownMenuItem(
      value: year,
      child: Text(
        year,
      ),
    );
DropdownMenuItem<String> buildMenuItem1(String month) => DropdownMenuItem(
      value: month,
      child: Text(
        month,
      ),
    );

class ScorePageState extends State<ScorePage> {
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
            width: 380,
            margin: const EdgeInsets.only(left: 4),
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
            width: 380,
            margin: const EdgeInsets.only(left: 4),
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

  String? value;
  String? value1;
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: const CommonAppBar(
          notificationenabled: false,
          arrowback: true,
          title: "Score",
        ),
        body: Column(
          children: [
            const SizedBox(
              width: double.infinity,
              height: 200,
              child: Profile(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10, left: 10),
                  padding: const EdgeInsets.all(4),
                  width: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.black, width: 1)),
                  child: Column(
                    children: [
                      DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: value,
                          isExpanded: true,
                          items: years.map(buildMenuItem).toList(),
                          onChanged: (value) =>
                              setState(() => this.value = value),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, left: 10),
                  padding: const EdgeInsets.all(4),
                  width: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.black, width: 1)),
                  child: Column(
                    children: [
                      DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: value1,
                          isExpanded: true,
                          items: months.map(buildMenuItem1).toList(),
                          onChanged: (value1) =>
                              setState(() => this.value1 = value1),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
                child: ListView(
              children: [
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
              ],
            ))
          ],
        ),
      );
}

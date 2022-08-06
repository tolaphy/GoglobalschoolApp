import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:goglobalschoolapp/page/Attendance_Detail.dart';
import 'package:goglobalschoolapp/widgets/appbar.dart';
import 'package:goglobalschoolapp/widgets/profile.dart';

class AttendancePage extends StatefulWidget {
  const AttendancePage({Key? key}) : super(key: key);

  @override
  AttendancePageState createState() => AttendancePageState();
}

List<DropdownMenuItem<String>> get dropdownItems {
  List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(
        child: Text(
          "2022",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        value: "2022"),
    const DropdownMenuItem(
        child: Text(
          "2021",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        value: "2021"),
  ];
  return menuItems;
}

class AttendancePageState extends State<AttendancePage> {
  Container tasklists(
    String month,
    String value1,
    String value2,
    String value3,
  ) {
    return Container(
      margin: const EdgeInsets.only(left: 5, top: 10),
      child: Card(
        elevation: 5,
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
                height: 75,
                width: 413,
                margin: const EdgeInsets.only(top: 10),

                // padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                  border: Border.all(
                    color: Colors.white,
                  ),
                  color: Colors.white,
                ),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,

                  children: <Widget>[
                    Container(
                      child: Text(
                        month,
                        style: const TextStyle(
                          fontFamily: 'CenturyGothic',
                          color: Color(0xff12663b),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Text(
                      value1,
                      style: const TextStyle(
                        fontFamily: 'CenturyGothic',
                        color: Color(0xffec2777),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      value2,
                      style: const TextStyle(
                        fontFamily: 'CenturyGothic',
                        color: Color(0xffedbd1d),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      value3,
                      style: const TextStyle(
                        fontFamily: 'CenturyGothic',
                        color: Color(0xffdb2127),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  String selectedValue = "2022";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        title: 'Attendance',
        notificationenabled: false,
        arrowback: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            width: double.infinity,
            height: 230,
            child: Profile(),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: DropdownButtonFormField(
                icon: const Icon(Icons.arrow_drop_down_circle_outlined),
                iconSize: 30,
                iconEnabledColor: Colors.black,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.white),
                  ),
                  //filled: true,
                  fillColor: const Color(0xff0b82c3),
                  iconColor: Colors.white,
                ),
                dropdownColor: Colors.white,
                value: selectedValue,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedValue = newValue!;
                  });
                },
                items: dropdownItems),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  // margin: const EdgeInsets.only(left: 5),
                  child: const Text(
                    'MONTH',
                    style: TextStyle(
                      color: Color(0xff0b82c3),
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  child: const Text(
                    'PRESENT',
                    style: TextStyle(
                      color: Color(0xff0b82c3),
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  child: const Text(
                    'ABSENT',
                    style: TextStyle(
                      color: Color(0xff0b82c3),
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  child: const Text(
                    'PERMISSION',
                    style: TextStyle(
                      color: Color(0xff0b82c3),
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          //ListView.builder(itemBuilder: (context, index) { return .....})
          Expanded(
            child: ListView(
              children: <Widget>[
                GestureDetector(
                  onTap: () {},
                  child: tasklists('MAY', '24', '1', '3'),
                ),
                GestureDetector(
                  onTap: () {},
                  child: tasklists('JUN', '25', '2', '3'),
                ),
                GestureDetector(
                  onTap: () {},
                  child: tasklists('JULY', '24', '5', '3'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AttendanceDetail()));
                  },
                  child: tasklists('AUG', '23', '1', '3'),
                ),
                GestureDetector(
                  onTap: () {},
                  child: tasklists('SEP', '22', '1', '3'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

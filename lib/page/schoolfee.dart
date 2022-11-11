import 'package:flutter/material.dart';

import 'package:goglobalschoolapp/widgets/appbar.dart';
import 'package:goglobalschoolapp/widgets/profile.dart';

class SchoolFeePage extends StatefulWidget {
  const SchoolFeePage({Key? key}) : super(key: key);

  @override
  SchoolFeePageState createState() => SchoolFeePageState();
}

Container tasklists(
  String month,
  String value1,
  String paid,
  String totalfee,
  String value2,
  String extrafee,
  String value3,
  String latecharges,
  String value4,
  String discount,
  String value5,
  String paidfee,
  String value6,
  Color boxColor,
) {
  return Container(
    padding: const EdgeInsets.only(top: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
            height: 210,
            width: 400,
            margin: const EdgeInsets.only(left: 0),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: boxColor),
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  month,
                  style: const TextStyle(
                    fontFamily: 'CenturyGothic',
                    fontSize: 25,
                    color: Color(0xff0b82c3),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      value1,
                      style: const TextStyle(
                        fontFamily: 'CenturyGothic',
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      paid,
                      style: const TextStyle(
                        fontFamily: 'CenturyGothic',
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: boxColor,
                  height: 25,
                  thickness: 1,
                  indent: 0,
                  endIndent: 0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      totalfee,
                      style: const TextStyle(
                        fontFamily: 'CenturyGothic',
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      value2,
                      style: const TextStyle(
                        fontFamily: 'CenturyGothic',
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      extrafee,
                      style: const TextStyle(
                        fontFamily: 'CenturyGothic',
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      value3,
                      style: const TextStyle(
                        fontFamily: 'CenturyGothic',
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      latecharges,
                      style: const TextStyle(
                        fontFamily: 'CenturyGothic',
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      value4,
                      style: const TextStyle(
                        fontFamily: 'CenturyGothic',
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      discount,
                      style: const TextStyle(
                        fontFamily: 'CenturyGothic',
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      value5,
                      style: const TextStyle(
                        fontFamily: 'CenturyGothic',
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      paidfee,
                      style: const TextStyle(
                        fontFamily: 'CenturyGothic',
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      value6,
                      style: const TextStyle(
                        fontFamily: 'CenturyGothic',
                        color: Colors.black,
                        fontSize: 18,
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

class SchoolFeePageState extends State<SchoolFeePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        notificationenabled: false,
        arrowback: true,
        title: "School Fees",
      ),
      body: Column(
        children: [
          const SizedBox(
            width: double.infinity,
            height: 200,
            child: Profile(),
          ),
          Container(
            margin: const EdgeInsets.only(top: 300),
            child: const Center(
                child: Text(
              'No Data',
              style: TextStyle(fontSize: 20),
            )),
          )
        ],
      ),
    );
  }
}

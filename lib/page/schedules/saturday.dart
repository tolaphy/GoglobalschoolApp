import 'package:flutter/material.dart';

class SaturdayPage extends StatelessWidget {
  const SaturdayPage({Key? key}) : super(key: key);

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
        body: Container(
            child: const Center(
      child: Text(
        "No Data",
        style: TextStyle(fontSize: 20),
      ),
    )));
  }
}

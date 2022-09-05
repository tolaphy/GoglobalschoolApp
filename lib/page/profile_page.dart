import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:goglobalschoolapp/widgets/appbar.dart';
import 'package:goglobalschoolapp/widgets/profile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  MapScreenState createState() => MapScreenState();
}

class MapScreenState extends State<ProfilePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        title: 'Profile',
        notificationenabled: false,
        arrowback: true,
      ),
      body: Stack(children: <Widget>[
        const SizedBox(
          width: double.infinity,
          height: 200,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
        ),
        SafeArea(
            child: Column(children: <Widget>[
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 50),
              height: 82,
              width: 391,
              decoration: BoxDecoration(
                color: const Color(0xff0b82c3),
                borderRadius: BorderRadius.circular(41),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const CircleAvatar(
                    backgroundImage: AssetImage('images/Profile.png'),
                    radius: 50,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        "PHY TOLA",
                        style: TextStyle(
                          fontFamily: 'CenturyGothic',
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Class 12A",
                        style: TextStyle(
                          fontFamily: 'CenturyGothic',
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
              padding:
                  const EdgeInsets.only(left: 25.0, right: 25.0, top: 80.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Text(
                        'ID Card',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'CenturyGothic',
                          color: Color(0xff0b82c3),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
          Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 2.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: const <Widget>[
                  Flexible(
                    child: TextField(
                      enabled: false,
                      readOnly: true,
                      decoration: InputDecoration(
                          hintText: "TL12659021",
                          hintStyle: TextStyle(
                            fontFamily: 'CenturyGothic',
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20,
                          )),
                    ),
                  ),
                ],
              )),
          Padding(
              padding:
                  const EdgeInsets.only(left: 25.0, right: 25.0, top: 10.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Text(
                        'Date of Birth',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'CenturyGothic',
                          color: Color(0xff0b82c3),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
          Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 2.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: const <Widget>[
                  Flexible(
                    child: TextField(
                      // enabled: false,
                      readOnly: true,
                      decoration: InputDecoration(
                          hintText: "21 Oct 1999",
                          hintStyle: TextStyle(
                            fontFamily: 'CenturyGothic',
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20,
                          )),
                    ),
                  ),
                ],
              )),
          Padding(
              padding:
                  const EdgeInsets.only(left: 25.0, right: 25.0, top: 10.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Text(
                        'Conatct',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'CenturyGothic',
                          color: Color(0xff0b82c3),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
          Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 2.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: const <Widget>[
                  Flexible(
                    child: TextField(
                      //enabled: false,
                      readOnly: true,

                      decoration: InputDecoration(
                          hintText: "012659021",
                          hintStyle: TextStyle(
                            fontFamily: 'CenturyGothic',
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20,
                          )),
                    ),
                  ),
                ],
              )),
          Padding(
              padding:
                  const EdgeInsets.only(left: 25.0, right: 25.0, top: 10.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Text(
                        'Mother Name',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'CenturyGothic',
                          color: Color(0xff0b82c3),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
          Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 2.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: const <Widget>[
                  Flexible(
                    child: TextField(
                      //enabled: false,
                      readOnly: true,
                      decoration: InputDecoration(
                          hintText: "Monica Larson",
                          hintStyle: TextStyle(
                            fontFamily: 'CenturyGothic',
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20,
                          )),
                    ),
                  ),
                ],
              )),
          Padding(
              padding:
                  const EdgeInsets.only(left: 25.0, right: 25.0, top: 10.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Text(
                        'Father Name',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'CenturyGothic',
                          color: Color(0xff0b82c3),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
          Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 2.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: const <Widget>[
                  Flexible(
                    child: TextField(
                      //enabled: false,
                      readOnly: true,
                      decoration: InputDecoration(
                          hintText: "Bernard Taylor",
                          hintStyle: TextStyle(
                            fontFamily: 'CenturyGothic',
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20,
                          )),
                    ),
                  ),
                ],
              )),
        ]))
      ]),
    );
  }
}

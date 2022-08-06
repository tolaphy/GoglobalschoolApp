import 'package:flutter/material.dart';
import 'package:goglobalschoolapp/page/profile_page.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        const SizedBox(
          width: double.infinity,
          height: 230,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: AssetImage('images/bgprofile.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SafeArea(
          child: Column(
            children: <Widget>[
              Center(
                  child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfilePage()));
                },
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
                    //mainAxisAlignment: MainAxisAlignment.center,
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
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "Class 12A",
                            style: TextStyle(
                              fontFamily: 'CenturyGothic',
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )),
            ],
          ),
        )
      ]),
    );
  }
}

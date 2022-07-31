import 'package:flutter/material.dart';

class MenuCards extends StatelessWidget {
  final String name;

  final String imgpath;
  const MenuCards({Key? key, required this.name, required this.imgpath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 40,
          ),
          Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset(
                    'images/${imgpath}',
                    height: 80,
                  ),
                  Text(
                    '${name}',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )),
        ],
      ),
    ));
  }
}

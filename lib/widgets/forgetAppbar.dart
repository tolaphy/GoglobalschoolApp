import 'package:flutter/material.dart';
import 'package:goglobalschoolapp/login_screen.dart';
import 'package:goglobalschoolapp/page/notification.dart';

class ForgetAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final bool notificationenabled;
  final bool arrowback;
  const ForgetAppBar({
    Key? key,
    required this.title,
    required this.notificationenabled,
    required this.arrowback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text(
          "${title}",
          style: const TextStyle(
            color: Color(0xff0b82c3),
            fontWeight: FontWeight.bold,
            fontFamily: 'CenturyGothic',
          ),
        ),
        actions: [
          notificationenabled == true
              ? IconButton(
                  onPressed: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NotificationPage()))
                  },
                  icon: const Icon(Icons.notifications),
                  color: const Color(0xff0b82c3),
                )
              : const SizedBox(
                  width: 1,
                )
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 4.0,
        leading: arrowback == true
            ? IconButton(
                icon: const Icon(Icons.arrow_back),
                color: const Color(0xff0b82c3),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                },
              )
            : const SizedBox(
                width: 1,
              ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

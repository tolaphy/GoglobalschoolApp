import 'package:flutter/material.dart';
import 'package:goglobalschoolapp/page/News_Details.dart';
import 'package:goglobalschoolapp/widgets/appbar.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsPage extends StatelessWidget {
  final Uri _url = Uri.parse('https://www.go-globalschool.com/news');
  NewsPage({Key? key}) : super(key: key);

  void _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  Container tasklists(
    String imgpath,
  ) {
    return Container(
      padding: const EdgeInsets.all(0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              height: 200,
              width: 410,
              margin: const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        'images/${imgpath}',
                        height: 185,
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }

  Container dc(
    String date,
    String title,
    String readMore,
  ) {
    return Container(
      padding: const EdgeInsets.all(0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              height: 98,
              width: 410,
              margin: const EdgeInsets.only(top: 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color(0xff0b82c3),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(left: 20, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          date,
                          style: const TextStyle(
                            fontFamily: 'CenturyGothic',
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          title,
                          style: const TextStyle(
                            fontFamily: 'CenturyGothic',
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          readMore,
                          style: const TextStyle(
                            fontFamily: 'CenturyGothic',
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: const CommonAppBar(
          notificationenabled: true,
          arrowback: false,
          title: "News",
        ),
        body: Container(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NewsDetail()));
                },
                child: Column(
                  children: [
                    tasklists(
                      'fd.jpeg',
                    ),
                    dc('Public on : 2022-05-25', 'Parent-Teacher Meeting 2022',
                        'Read More..')
                  ],
                ),
              ),
              GestureDetector(
                child: Column(
                  children: [
                    tasklists(
                      'ps.jpeg',
                    ),
                    dc('Public on : 2021-09-27', 'The Private School',
                        'Read More..')
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}

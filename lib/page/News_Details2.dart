import 'package:flutter/material.dart';
import 'package:goglobalschoolapp/page/location.dart';
import 'package:goglobalschoolapp/page/notification.dart';
import 'package:goglobalschoolapp/page/report.dart';
import 'package:goglobalschoolapp/widgets/appbar.dart';
import 'package:goglobalschoolapp/widgets/forgetAppbar.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../login_screen.dart';

class NewsDetail2 extends StatelessWidget {
  const NewsDetail2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: const CommonAppBar(
          title: "Event Details",
          notificationenabled: false,
          arrowback: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 100,
                decoration: const BoxDecoration(
                    color: Colors.black,
                    gradient: LinearGradient(
                      colors: [(Color(0x00000001)), (Color(0x00000001))],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomLeft,
                    )),
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10, right: 300),
                      child: Column(
                        children: const <Widget>[
                          Text(
                            'News',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'CenturyGothic',
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      child: const Text(
                        '2020 and 2021 Annual Shareholders Meeting',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'CenturyGothic',
                          color: Color(0xff0b82c3),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      child: const Text(
                        '2022-04-25',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'CenturyGothic',
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                )),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30, left: 10),
                child: const Text(
                  "Shareholder Meeting Go Global School PLC, a company that has 81 different shareholders, has been holding its annual shareholder's meeting since Go Global School came into the picture, in 2015. The meeting itself is conducted to show the progression of the company in its health and wealth and more importantly, the directions of where it is heading.",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'CenturyGothic',
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'images/Q1.png',
                      height: 200,
                    )),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30, left: 10),
                child: const Text(
                  "This year's meeting was more special than any other years because the shareholders have not been able to meet since 2019 due to the pandemic, COVID-19. And after a couple of shuffling and rescheduling, the meeting has finally held on March 26th, 2022, and it was joined by 42 shareholders, making 51.22 percent of the company owners presented. The Board of Directors reported and kicked off with a small meeting before they came to join the whole crowd and supervisors. We were honored to join by His Excellency Mak Samphear and His Excellency Neak Neron along with many well-known people in businesses around the area. The ceremony was opened by the company Chairman, Dr. Chy Sangvat, and was presented by Mr. Lok Lundy, the company’s Managing Director and acting School Principal for Go Global School. Mr. Lok Lundy presented the progression of what they have set for the company during their last meeting in actions and financial reports for Go Global School and Go Credits. He mentioned that even though it was tough to survive the pandemic, Go Global School PLC still stood and is standing with pride and function for these years. Despite the challenges, there were more than a thousand students enrolled at the school for the 2021-2022 Academic Year, staff had helped with training and managing Siem Reap and all its districts COVID-19 and visitors’ statistics, and five new companies, Go Global Mart, Go Global Tech, Go Global TV, Go Global Farm, and Go Global Business Agency, came to live. There were so many things that happened in the last two years, that a lot of people could not imagine, and it happened while many places have been closed, gone on hiatus, or even bankrupt. Not only that, fourteen people have been recognized for their leadership and sacrifices for the company since 2015, and these people have stayed to help with the ups and downs from the start until now, so they deserved this appreciation, which no one could not deny. Before the discussion session, Mr. Lundy did not miss to inform about the plan on how the company will move forward in 2022.",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'CenturyGothic',
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'images/q2.png',
                      height: 200,
                    )),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30, left: 10),
                child: const Text(
                  "On top of that, Go Global Mart, one of the five new companies, sponsored the event with special menu lunch to conclude the meeting such as roasted wild boar crossed breed with pigs, black chicken and Chinese herb soup, and roasted catfish for shareholders and staff to enjoy. These were the products that Go Global Mart wants to own the market once they finally opened in May. After lunch, people said goodbye to each other and wish everyone well and healthy. The meeting was a success in many ways for Go Global School PLC and its leaders. Thanks to everyone who has been working so hard to bring this meeting to life due to the scheduled dates that have been called off a few times, sent out invitations and ran the whole program for the whole meeting, and for all the shareholders who made time to come and join the meeting despite the challenges. The next annual meeting has not been scheduled but everyone is looking forward to it in 2023!!",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'CenturyGothic',
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'images/q3.png',
                      height: 200,
                    )),
              ),
              Container(
                margin: const EdgeInsets.only(right: 0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'images/q4.png',
                      height: 200,
                    )),
              ),
            ],
          ),
        ),
      );
}

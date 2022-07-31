import 'package:flutter/material.dart';
import 'package:goglobalschoolapp/page/profile_page.dart';
import 'package:goglobalschoolapp/page/schedules/Friday.dart';
import 'package:goglobalschoolapp/page/schedules/Thursday.dart';
import 'package:goglobalschoolapp/page/schedules/monday.dart';
import 'package:goglobalschoolapp/page/schedules/saturday.dart';
import 'package:goglobalschoolapp/page/schedules/tuesday.dart';
import 'package:goglobalschoolapp/page/schedules/wednesday.dart';
import 'package:goglobalschoolapp/widgets/appbar.dart';
import 'package:goglobalschoolapp/widgets/profile.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  SchedulePageState createState() => SchedulePageState();
}

class SchedulePageState extends State<SchedulePage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 6, vsync: this);
    return Scaffold(
        appBar: const CommonAppBar(
          notificationenabled: false,
          arrowback: true,
          title: "Schedule",
        ),
        body: Column(children: [
          const SizedBox(
            width: double.infinity,
            height: 200,
            child: Profile(),
          ),
          Container(
            padding: const EdgeInsets.all(4),
            child: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              controller: _tabController,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xff0b82c3),
              ),
              tabs: const [
                Tab(
                  text: 'Mon',
                ),
                Tab(
                  text: 'Tue',
                ),
                Tab(
                  text: 'Wed',
                ),
                Tab(
                  text: 'Thu',
                ),
                Tab(
                  text: 'Fri',
                ),
                Tab(
                  text: 'Sat',
                ),
              ],
            ),
          ),
          Expanded(
              child: TabBarView(
            controller: _tabController,
            children: const [
              MondayPage(),
              TuesdayPage(),
              WednesdayPage(),
              ThursdayPage(),
              FridayPage(),
              SaturdayPage(),
            ],
          ))
        ]));
  }
}

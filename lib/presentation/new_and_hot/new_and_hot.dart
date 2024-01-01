import 'package:flutter/material.dart';

import '../../core/colors/colors.dart';
import '../../core/constants.dart';
import '../widget/appbar_widget.dart';
import 'widget/commingSoonTabViewWidget.dart';
import 'widget/everyoneWatchingTabBarViewWidget.dart';

class NewAndHotScreen extends StatelessWidget {
  const NewAndHotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              const Text(
                "New & Hot",
                style: TextStyle(
                  fontSize: 25,
                  color: kWhiteColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.cast,
                color: kWhiteColor,
              ),
              kWidth,
              Container(
                width: 30,
                height: 30,
                color: Colors.blue,
              ),
              kWidth
            ],
          ),
          bottom: TabBar(
            isScrollable: true,
            labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            labelColor: kBlackColor,
            unselectedLabelColor: kWhiteColor,
            dividerColor: Colors.transparent,
            padding: EdgeInsets.zero,
            tabAlignment: TabAlignment.start,
            indicator: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(30),
            ),
            tabs: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Tab(
                  text: '🍿 Comming Soon',
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Tab(text: '👀 Eveyones Watching'),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            CommingSoonTabBarViewWidget(
              text: "Comming Soon",
              key: Key("comming sooon"),
            ),
            EveryoneWatchingTabBarViewWidget(text: "Everyones Warching")
          ],
        ),
      ),
    );
  }
}

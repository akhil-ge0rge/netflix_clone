import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/downloads/download_screen.dart';
import 'package:netflix_clone/presentation/fast_laugh/fast_laugh.dart';
import 'package:netflix_clone/presentation/home/home_screen.dart';
import 'package:netflix_clone/presentation/main_page/widget/bottom_nav.dart';
import 'package:netflix_clone/presentation/new_and_hot/new_and_hot.dart';
import 'package:netflix_clone/presentation/search/search_screen.dart';

import '../../core/colors/colors.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  final _pages = [
    HomeScreen(),
    NewAndHotScreen(),
    FastLaughScreen(),
    SearchScreen(),
    DownloadScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ValueListenableBuilder(
            valueListenable: indexChangeNotifier,
            builder: (BuildContext context, int index, Widget? child) {
              return _pages.elementAt(index);
            }),
        bottomNavigationBar: const BottomNavigationWidget(),
      ),
    );
  }
}

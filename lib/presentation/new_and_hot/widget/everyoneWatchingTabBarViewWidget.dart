import 'package:flutter/material.dart';

import 'everyonesWatchingMovieCardWidget.dart';

class EveryoneWatchingTabBarViewWidget extends StatelessWidget {
  final String text;
  const EveryoneWatchingTabBarViewWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) => const EveryoneWatchingMovieCardWidget(),
    );
  }
}

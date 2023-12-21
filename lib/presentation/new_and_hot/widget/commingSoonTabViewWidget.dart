import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';

import 'commingSoonMovieCardWidget.dart';

class CommingSoonTabBarViewWidget extends StatelessWidget {
  final String text;
  const CommingSoonTabBarViewWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) => CommingSoonMovieCard(),
    );
  }
}

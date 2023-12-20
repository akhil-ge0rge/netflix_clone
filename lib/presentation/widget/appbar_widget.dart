import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/colors/colors.dart';
import '../../core/constants.dart';

class AppBarWidget extends StatelessWidget {
  final String appBarTitle;
  const AppBarWidget({super.key, required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          appBarTitle,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(),
        Icon(
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
    );
  }
}

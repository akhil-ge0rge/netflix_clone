import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';

class FastLaughActionWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  const FastLaughActionWidget(
      {super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Column(
        children: [
          Icon(
            icon,
            color: kWhiteColor,
          ),
          Text(
            text,
            style: TextStyle(
              color: kWhiteColor,
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }
}

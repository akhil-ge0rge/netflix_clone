import 'package:flutter/material.dart';

class MainTitle extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  const MainTitle(
      {super.key,
      required this.text,
      this.fontSize = 22,
      this.fontWeight = FontWeight.bold});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';

class RotatedImages extends StatelessWidget {
  final double angle;
  final String imgUrl;
  final EdgeInsets margin;
  const RotatedImages(
      {super.key,
      required this.angle,
      required this.imgUrl,
      required this.margin});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Transform.rotate(
      angle: angle * (pi / 180),
      child: Container(
        width: size.width * 0.4,
        height: size.width * 0.6,
        margin: margin,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.red,
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(imgUrl))),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';

class MovieNumberCard extends StatelessWidget {
  final String imgUrl;
  final int index;
  const MovieNumberCard({super.key, required this.imgUrl, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Row(
          children: [
            SizedBox(
              width: 40,
            ),
            Container(
              width: 150,
              height: 250,
              margin: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(imgUrl),
                ),
              ),
            ),
          ],
        ),
        Positioned(
            bottom: -25,
            left: 30,
            right: 0,
            child: Stack(
              children: <Widget>[
                // Stroked text as border.
                Text(
                  "${index + 1}",
                  style: TextStyle(
                    fontSize: 130,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 3
                      ..color = kWhiteColor,
                  ),
                ),
                // Solid text as fill.
                Text(
                  "${index + 1}",
                  style: const TextStyle(
                    fontSize: 130,
                    color: kBlackColor,
                  ),
                ),
              ],
            ))
      ],
    );
  }
}

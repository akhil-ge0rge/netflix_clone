import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants.dart';

class EveryoneWatchingMovieCardWidget extends StatelessWidget {
  final String id;
  final String posterPath;
  final String movieName;
  final String description;
  const EveryoneWatchingMovieCardWidget(
      {super.key,
      required this.id,
      required this.posterPath,
      required this.movieName,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          movieName,
          style: TextStyle(
            color: kWhiteColor,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        kHeight,
        Text(
          description,
          textAlign: TextAlign.start,
          style: TextStyle(
            color: kWhiteColor,
          ),
        ),
        kHeight,
        Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 160,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(posterPath))),
            ),
            Positioned(
              right: 8,
              bottom: 8,
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kBlackColor.withOpacity(0.5),
                ),
                child: IconButton(
                  onPressed: () {},
                  padding: EdgeInsets.zero,
                  icon: Icon(
                    Icons.volume_off,
                    color: kWhiteColor,
                  ),
                ),
              ),
            )
          ],
        ),
        kHeight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              children: [
                Icon(
                  Icons.share,
                  color: kWhiteColor,
                  size: 20,
                ),
                Text(
                  "Share",
                  style: TextStyle(
                      color: kWhiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 10),
                )
              ],
            ),
            kWidth,
            Column(
              children: [
                Icon(
                  CupertinoIcons.add,
                  color: kWhiteColor,
                  size: 20,
                ),
                Text(
                  "My List",
                  style: TextStyle(
                      color: kWhiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 10),
                )
              ],
            ),
            kWidth,
            Column(
              children: [
                Icon(
                  CupertinoIcons.play_arrow_solid,
                  color: kWhiteColor,
                  size: 20,
                ),
                Text(
                  "Play",
                  style: TextStyle(
                      color: kWhiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 10),
                )
              ],
            ),
            kWidth,
          ],
        ),
        kHeight,
      ],
    );
  }
}

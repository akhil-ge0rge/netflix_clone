import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants.dart';

class EveryoneWatchingMovieCardWidget extends StatelessWidget {
  const EveryoneWatchingMovieCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Tall Gril 2",
          style: TextStyle(
              color: kWhiteColor,
              letterSpacing: 1,
              fontWeight: FontWeight.bold,
              fontSize: 12),
        ),
        kHeight,
        Text(
          "asdasd asdadas dasdadas aa  asdasdas ads asd asdasd. asdasd asd as d asda d a d as dasdasda asdasd asd asd as d as d asd asd as dasd a d  qw re  fg vcxs  fegfergr vrrv ",
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
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://www.themoviedb.org/t/p/w1066_and_h600_bestv2/fm6KqXpk3M2HVveHwCrBSSBaO0V.jpg'))),
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

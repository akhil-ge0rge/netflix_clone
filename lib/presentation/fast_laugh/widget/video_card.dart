import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/presentation/fast_laugh/widget/fastlaugh_action_widget.dart';

class VideoCard extends StatelessWidget {
  final int index;
  const VideoCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents.elementAt(index),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: kBlackColor.withOpacity(0.5),
                  child: Center(
                    child: IconButton(
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                      icon: Icon(
                        Icons.volume_off,
                        color: kWhiteColor,
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          alignment: Alignment.bottomCenter,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://www.themoviedb.org/t/p/w1066_and_h600_bestv2/ktHEdqmMWC1wdfPRMRCTZe2OISL.jpg'))),
                          child: Text(
                            "LUDO",
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        FastLaughActionWidget(
                            icon: Icons.emoji_emotions, text: 'LOL'),
                        FastLaughActionWidget(icon: Icons.add, text: 'My List'),
                        FastLaughActionWidget(icon: Icons.share, text: 'Share'),
                        FastLaughActionWidget(
                            icon: Icons.play_arrow, text: 'Play'),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

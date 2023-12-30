import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/domain/downloads/models/downloads.dart';
import 'package:netflix_clone/presentation/fast_laugh/widget/fastlaugh_action_widget.dart';
import 'package:netflix_clone/presentation/fast_laugh/widget/video_player.dart';
import 'package:share_plus/share_plus.dart';
import 'package:video_player/video_player.dart';

import '../../../application/fastLaugh/fast_laugh_bloc.dart';

class VideoListCardItemInheritedWidget extends InheritedWidget {
  final Widget widget;
  final Downloads movieData;

  const VideoListCardItemInheritedWidget({
    Key? key,
    required this.widget,
    required this.movieData,
  }) : super(key: key, child: widget);
  @override
  bool updateShouldNotify(
      covariant VideoListCardItemInheritedWidget oldWidget) {
    return oldWidget.movieData != movieData;
  }

  static VideoListCardItemInheritedWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<VideoListCardItemInheritedWidget>();
  }
}

class VideoCard extends StatelessWidget {
  final int index;
  const VideoCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final posterPath = ImageAppendUrl +
        VideoListCardItemInheritedWidget.of(context)!
            .movieData
            .poster_path
            .toString();
    final videoUrl = videoUrls.elementAt(index % videoUrls.length);
    final title = VideoListCardItemInheritedWidget.of(context)!
        .movieData
        .title
        .toString();
    return Stack(
      children: [
        FastLaughVideoPlayer(videoUrl: videoUrl, onStateChanged: (bool) {}),
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
                                  image: NetworkImage(posterPath))),
                          child: Text(
                            title.toUpperCase(),
                            style: const TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 10,
                            ),
                          ),
                        ),
                        FastLaughActionWidget(
                            icon: Icons.emoji_emotions, text: 'LOL'),
                        GestureDetector(
                            onTap: () {
                              final movieName = title.toUpperCase();
                              Share.share(movieName);
                            },
                            child: FastLaughActionWidget(
                                icon: Icons.add, text: 'My List')),
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

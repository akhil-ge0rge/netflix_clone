import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/home/widget/movie_tile_card.dart';

import '../../../core/constants.dart';
import '../../widget/main_title.dart';

class MovieCardListWithTextWidget extends StatelessWidget {
  final String title;
  final List<String> movieList;
  const MovieCardListWithTextWidget({
    super.key,
    required this.title,
    required this.movieList,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(
          text: title,
        ),
        kHeight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              movieList.length,
              (index) => MovieTileCard(
                imgUrl: movieList.elementAt(index),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

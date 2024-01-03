// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:netflix_clone/presentation/home/widget/movie_tile_card.dart';

import '../../../core/constants.dart';
import '../../widget/main_title.dart';
import 'movie_number_card.dart';

class TopTenMovieCardWidget extends StatelessWidget {
  final String title;
  final List<String> movieList;
  const TopTenMovieCardWidget({
    Key? key,
    required this.title,
    required this.movieList,
  }) : super(key: key);

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
              (index) => MovieNumberCard(
                index: index,
                imgUrl: movieList.elementAt(index),
              ),
            ),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/home/widget/movie_tile_card.dart';

import '../../../core/constants.dart';
import '../../widget/main_title.dart';
import 'movie_number_card.dart';

class TopTenMovieCardWidget extends StatelessWidget {
  final String title;
  const TopTenMovieCardWidget({
    super.key,
    required this.title,
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
                10,
                (index) => MovieNumberCard(
                    index: index,
                    imgUrl:
                        'https://www.themoviedb.org/t/p/w440_and_h660_face/upmXGc1QovmPBU0mQJR2re6ruKd.jpg')),
          ),
        )
      ],
    );
  }
}
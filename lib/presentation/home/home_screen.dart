import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/home/widget/movie_tile_card.dart';
import 'package:netflix_clone/presentation/home/widget/top_ten_movie_card.dart';

import '../../core/colors/colors.dart';
import '../widget/main_title.dart';
import 'widget/movie_card_list_with_text.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  String imageUrl =
      'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/8xV47NDrjdZDpkVcCFqkdHa3T0C.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  width: double.infinity,
                  height: 500,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover, image: NetworkImage(imageUrl))),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.add,
                          color: kWhiteColor,
                          size: 30,
                        ),
                        Text(
                          "My List",
                          style: TextStyle(
                              color: kWhiteColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ],
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(kWhiteColor),
                      ),
                      icon: const Icon(
                        Icons.play_arrow,
                        color: kBlackColor,
                      ),
                      label: const Text(
                        "Play",
                        style: TextStyle(
                            color: kBlackColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.info_outline,
                          color: kWhiteColor,
                          size: 30,
                        ),
                        Text(
                          "Info",
                          style: TextStyle(
                              color: kWhiteColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            kHeight20,
            MovieCardListWithTextWidget(
              title: "Released in the past year",
            ),
            kHeight20,
            MovieCardListWithTextWidget(
              title: "Trending Now",
            ),
            kHeight20,
            TopTenMovieCardWidget(
              title: "Top 10 TV Shows in India Today",
            ),
            kHeight20,
            MovieCardListWithTextWidget(
              title: "Tense Dramas",
            ),
            kHeight20,
            MovieCardListWithTextWidget(
              title: "South Indian Cinemas",
            ),
          ],
        ),
      ),
    );
  }
}

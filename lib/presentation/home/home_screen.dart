import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/home/widget/top_ten_movie_card.dart';

import '../../core/colors/colors.dart';
import 'widget/movie_card_list_with_text.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  String imageUrl =
      'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/8xV47NDrjdZDpkVcCFqkdHa3T0C.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
            valueListenable: scrollNotifier,
            builder: (ctx, val, _) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: NotificationListener<UserScrollNotification>(
                  onNotification: (notification) {
                    final ScrollDirection scrollDirection =
                        notification.direction;
                    if (scrollDirection == ScrollDirection.reverse) {
                      scrollNotifier.value = false;
                    } else if (scrollDirection == ScrollDirection.forward) {
                      scrollNotifier.value = true;
                    }
                    return true;
                  },
                  child: Stack(
                    children: [
                      ListView(
                        physics: const ClampingScrollPhysics(),
                        children: [
                          Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Container(
                                width: double.infinity,
                                height: 500,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(imageUrl))),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                                      backgroundColor:
                                          MaterialStatePropertyAll(kWhiteColor),
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
                      scrollNotifier.value
                          ? AnimatedContainer(
                              duration: Duration(milliseconds: 1000),
                              child: Container(
                                height: 80,
                                width: double.infinity,
                                color: kBlackColor.withOpacity(0.1),
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Center(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Image.network(
                                                netflixLogo,
                                                width: 40,
                                                height: 40,
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.cast,
                                                size: 30,
                                                color: kWhiteColor,
                                              ),
                                              kWidth,
                                              Container(
                                                width: 40,
                                                height: 40,
                                                color: Colors.blue,
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      kHeight,
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            "TV Shows",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "Movies",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Category",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Icon(
                                                Icons.arrow_drop_down_sharp,
                                                color: kWhiteColor,
                                              )
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          : SizedBox()
                    ],
                  ),
                ),
              );
            }));
  }
}

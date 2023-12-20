import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/presentation/downloads/widgets/rotatedImage.dart';
import 'package:netflix_clone/presentation/widget/appbar_widget.dart';

import '../../core/constants.dart';

class DownloadScreen extends StatelessWidget {
  DownloadScreen({super.key});
  final List imageList = [
    'https://www.themoviedb.org/t/p/w440_and_h660_face/mBaXZ95R2OxueZhvQbcEWy2DqyO.jpg',
    'https://www.themoviedb.org/t/p/w440_and_h660_face/upmXGc1QovmPBU0mQJR2re6ruKd.jpg',
    'https://www.themoviedb.org/t/p/w440_and_h660_face/exNtEY8QUuQh9e23wSQjkPxKIU3.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            appBarTitle: 'Downloads',
          )),
      body: ListView(
        children: [
          const Row(
            children: [
              kWidth,
              Icon(
                Icons.settings,
                color: kWhiteColor,
              ),
              kWidth,
              Text("Smart Download")
            ],
          ),
          const Text("Introducing Downloads For you"),
          const Text(
              "We will download a personalized selection of movies and shows for you so there is always something to watch on your device"),
          Container(
            width: size.width,
            height: size.width,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: size.width * 0.4,
                  ),
                ),
                RotatedImages(
                  angle: 30,
                  margin: const EdgeInsets.only(left: 140, bottom: 50),
                  imgUrl: imageList.elementAt(2),
                ),
                RotatedImages(
                  angle: -30,
                  margin: const EdgeInsets.only(right: 140, bottom: 50),
                  imgUrl: imageList.elementAt(1),
                ),
                RotatedImages(
                  angle: 0,
                  margin: EdgeInsets.only(left: 0, bottom: 20),
                  imgUrl: imageList.elementAt(0),
                ),
              ],
            ),
          ),
          MaterialButton(
            onPressed: () {},
            color: kButtonColorBlue,
            child: const Text(
              "Set Up",
              style: TextStyle(
                color: kWhiteColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {},
            color: kButtonColorWhite,
            child: const Text(
              "See What You Can Download",
              style: TextStyle(
                color: kBlackColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

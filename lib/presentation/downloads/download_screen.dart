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
        padding: EdgeInsets.all(10),
        children: [
          const Row(
            children: [
              kWidth,
              Icon(
                Icons.settings,
                color: kWhiteColor,
              ),
              kWidth,
              Text(
                "Smart Download",
                style: TextStyle(
                  color: kWhiteColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              )
            ],
          ),
          kHeight,
          const Text(
            "Introducing Downloads For you",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: kWhiteColor,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          kHeight,
          const Text(
            "We will download a personalized selection of\nmovies and shows for you so there's\nalways something to watch on your\ndevice",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          kHeight,
          SizedBox(
            width: size.width,
            height: size.width,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
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
          ElevatedButton(
            onPressed: () {},
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(kButtonColorBlue),
            ),
            child: const Text(
              "Set Up",
              style: TextStyle(
                color: kWhiteColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          kHeight,
          ElevatedButton(
            onPressed: () {},
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(kWhiteColor),
            ),
            child: const Text(
              "See What You Can Download",
              style: TextStyle(
                color: kBlackColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}

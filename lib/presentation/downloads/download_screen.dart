import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/downloads/downloads_bloc.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/presentation/downloads/widgets/rotatedImage.dart';
import 'package:netflix_clone/presentation/widget/appbar_widget.dart';

import '../../core/constants.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DownloadsBloc>(context)
          .add(const DownloadsEvent.getDownloadsImages());
    });
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            appBarTitle: 'Downloads',
          )),
      body: ListView(
        padding: const EdgeInsets.all(10),
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
          BlocBuilder<DownloadsBloc, DownloadsState>(
            builder: (context, state) {
              return SizedBox(
                width: size.width,
                height: size.width,
                child: state.isloading
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : state.downloads.isEmpty
                        ? const Text("No Imgaes Found")
                        : Stack(
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
                                margin: const EdgeInsets.only(
                                    left: 140, bottom: 50),
                                imgUrl:
                                    "$ImageAppendUrl${state.downloads.elementAt(0).poster_path}",
                              ),
                              RotatedImages(
                                angle: -30,
                                margin: const EdgeInsets.only(
                                    right: 140, bottom: 50),
                                imgUrl:
                                    "$ImageAppendUrl${state.downloads.elementAt(1).poster_path}",
                              ),
                              RotatedImages(
                                angle: 0,
                                margin:
                                    const EdgeInsets.only(left: 0, bottom: 20),
                                imgUrl:
                                    "$ImageAppendUrl${state.downloads.elementAt(2).poster_path}",
                              ),
                            ],
                          ),
              );
            },
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

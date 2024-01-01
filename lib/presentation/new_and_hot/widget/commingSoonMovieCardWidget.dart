import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants.dart';

class CommingSoonMovieCard extends StatelessWidget {
  final String id;
  final String month;
  final String day;
  final String posterPath;
  final String movieName;
  final String description;
  const CommingSoonMovieCard(
      {super.key,
      required this.id,
      required this.month,
      required this.day,
      required this.posterPath,
      required this.movieName,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 50,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kHeight,
              Text(
                month,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kWhiteColor,
                  fontSize: 20,
                ),
              ),
              Text(
                day,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kWhiteColor,
                  letterSpacing: 4,
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 400,
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 160,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(posterPath))),
                  ),
                  Positioned(
                    right: 8,
                    bottom: 8,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kBlackColor.withOpacity(0.5),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        padding: EdgeInsets.zero,
                        icon: Icon(
                          Icons.volume_off,
                          color: kWhiteColor,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              kHeight,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 200,
                    child: Text(
                      movieName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: kWhiteColor,
                          letterSpacing: 3,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Icon(
                            CupertinoIcons.bell_fill,
                            color: kWhiteColor,
                            size: 20,
                          ),
                          Text(
                            "Remind Me",
                            style: TextStyle(
                                color: kWhiteColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 10),
                          )
                        ],
                      ),
                      kWidth,
                      Column(
                        children: [
                          Icon(
                            CupertinoIcons.info,
                            color: kWhiteColor,
                            size: 20,
                          ),
                          Text(
                            "Info",
                            style: TextStyle(
                                color: kWhiteColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 10),
                          )
                        ],
                      ),
                      kWidth,
                    ],
                  )
                ],
              ),
              Text(
                "Comming on friday",
                style: TextStyle(
                    color: kWhiteColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 10),
              ),
              kHeight,
              Text(
                movieName,
                maxLines: 1,
                overflow: TextOverflow.clip,
                style: TextStyle(
                    color: kWhiteColor,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
              ),
              kHeight,
              Text(
                description,
                maxLines: 5,
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: kWhiteColor,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

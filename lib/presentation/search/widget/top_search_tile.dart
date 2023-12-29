import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';

class TopSearchTile extends StatelessWidget {
  final String imgUrl;
  final String movieName;
  const TopSearchTile(
      {super.key, required this.imgUrl, required this.movieName});

  @override
  Widget build(BuildContext context) {
    final scrSize = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: scrSize.width * 0.35,
          height: scrSize.height * 0.1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(ImageAppendUrl + imgUrl),
            ),
          ),
        ),
        kWidth,
        Expanded(
            child: Text(
          movieName,
          style: const TextStyle(
              color: kWhiteColor, fontWeight: FontWeight.bold, fontSize: 16),
        )),
        Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.white,
            ),
          ),
          child: const Center(
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}

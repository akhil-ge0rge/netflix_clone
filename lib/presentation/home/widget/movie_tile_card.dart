import 'package:flutter/material.dart';

class MovieTileCard extends StatelessWidget {
  final String imgUrl;
  const MovieTileCard({super.key, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 250,
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(imgUrl),
        ),
      ),
    );
  }
}

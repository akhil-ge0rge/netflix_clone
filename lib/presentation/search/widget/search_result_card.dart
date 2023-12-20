import 'package:flutter/material.dart';

class SearchResultCard extends StatelessWidget {
  final String imgUrl;
  const SearchResultCard({super.key, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image:
              DecorationImage(fit: BoxFit.cover, image: NetworkImage(imgUrl))),
    );
  }
}

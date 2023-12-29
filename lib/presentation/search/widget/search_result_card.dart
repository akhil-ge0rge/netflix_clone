import 'package:flutter/material.dart';

import '../../../core/constants.dart';

class SearchResultCard extends StatelessWidget {
  final String imgUrl;
  const SearchResultCard({super.key, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: NetworkImage(ImageAppendUrl + imgUrl))),
    );
  }
}

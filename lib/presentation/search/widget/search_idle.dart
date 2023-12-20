import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/search/widget/top_search_tile.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants.dart';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});
  final image =
      'https://www.themoviedb.org/t/p/w1066_and_h600_bestv2/ktHEdqmMWC1wdfPRMRCTZe2OISL.jpg';
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Top Searches",
          style: TextStyle(
            color: kWhiteColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        kHeight,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (ctx, index) => TopSearchTile(imgUrl: image),
              separatorBuilder: (ctx, index) => const SizedBox(
                    height: 10,
                  ),
              itemCount: 10),
        )
      ],
    );
  }
}

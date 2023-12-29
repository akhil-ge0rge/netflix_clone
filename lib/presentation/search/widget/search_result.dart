import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/search/widget/search_result_card.dart';

import '../../../application/search/search_bloc.dart';
import '../../../core/colors/colors.dart';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});
  final image =
      'https://www.themoviedb.org/t/p/w1066_and_h600_bestv2/ktHEdqmMWC1wdfPRMRCTZe2OISL.jpg';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Movies & Series",
          style: TextStyle(
            color: kWhiteColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        kHeight,
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isloading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.isError) {
                return const Text("Error Occured");
              } else if (state.searchResultList.isEmpty) {
                return const Text("No Search Result Found");
              } else {
                return GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 3,
                  mainAxisSpacing: 8,
                  childAspectRatio: 1 / 1.4,
                  crossAxisSpacing: 8,
                  children: List.generate(
                    state.searchResultList.length,
                    (index) => SearchResultCard(
                      imgUrl: state.searchResultList
                          .elementAt(index)
                          .posterPath
                          .toString(),
                    ),
                  ),
                );
              }
            },
          ),
        ),
      ],
    );
  }
}

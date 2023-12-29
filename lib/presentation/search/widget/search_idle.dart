import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/presentation/search/widget/top_search_tile.dart';

import '../../../application/search/search_bloc.dart';
import '../../../core/colors/colors.dart';
import '../../../core/constants.dart';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Top Searches",
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
                return const Center(
                  child: Text("Error Occured"),
                );
              } else if (state.idleList.isEmpty) {
                return const Center(
                  child: Text("No Top Searches Found"),
                );
              } else {
                return ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (ctx, index) => TopSearchTile(
                        movieName: state.idleList.elementAt(index).title ??
                            'No Title Provided',
                        imgUrl: state.idleList
                            .elementAt(index)
                            .poster_path
                            .toString()),
                    separatorBuilder: (ctx, index) => const SizedBox(
                          height: 10,
                        ),
                    itemCount: state.idleList.length);
              }
            },
          ),
        )
      ],
    );
  }
}

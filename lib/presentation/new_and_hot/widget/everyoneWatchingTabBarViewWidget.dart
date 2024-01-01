import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/core/constants.dart';

import '../../../application/hotandnew/hot_and_new_bloc.dart';
import 'everyonesWatchingMovieCardWidget.dart';

class EveryoneWatchingTabBarViewWidget extends StatelessWidget {
  final String text;
  const EveryoneWatchingTabBarViewWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HotAndNewBloc>(context)
          .add(const LoadDataInEveryoneIsWatching());
    });
    return BlocBuilder<HotAndNewBloc, HotAndNewState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state.isError) {
          return const Center(
            child: Text("Error Occoured"),
          );
        } else if (state.everyoneWatchingList.isEmpty) {
          return const Center(
            child: Text("No Data Found in Comming Soon"),
          );
        } else {
          print(state.everyoneWatchingList.length);
          return ListView.builder(
            itemCount: state.everyoneWatchingList.length,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              final movie = state.everyoneWatchingList.elementAt(index);

              if (movie.id == null) {
                return const SizedBox();
              }
              print(movie.originalName);
              print(movie.title);
              print(movie.originalTitle);
              return EveryoneWatchingMovieCardWidget(
                  id: movie.id.toString(),
                  posterPath: ImageAppendUrl + movie.posterPath.toString(),
                  movieName: movie.originalName.toString(),
                  description: movie.overview.toString());
            },
          );
        }
      },
    );
  }
}

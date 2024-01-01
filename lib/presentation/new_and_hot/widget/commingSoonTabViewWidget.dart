import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';

import '../../../application/hotandnew/hot_and_new_bloc.dart';
import 'commingSoonMovieCardWidget.dart';

class CommingSoonTabBarViewWidget extends StatelessWidget {
  final String text;
  const CommingSoonTabBarViewWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HotAndNewBloc>(context)
          .add(const LoadDataInCommingSoon());
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
        } else if (state.commingSoonList.isEmpty) {
          return const Center(
            child: Text("No Data Found in Comming Soon"),
          );
        } else {
          return ListView.builder(
            itemCount: state.commingSoonList.length,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              final movie = state.commingSoonList.elementAt(index);
              String month = '';
              String date = '';
              try {
                final _date = DateTime.tryParse(movie.releaseDate!);
                final formatedDate = DateFormat.yMMMMd('en_US').format(_date!);
                month = formatedDate.split(' ').first.substring(0, 3);
                date = movie.releaseDate!.split('-').elementAt(1);
              } catch (_) {
                month = '';
                date = '';
              }

              if (movie.id == null) {
                return const SizedBox();
              }

              return CommingSoonMovieCard(
                  id: movie.id.toString(),
                  month: month,
                  day: date,
                  posterPath: ImageAppendUrl + movie.backdropPath.toString(),
                  movieName: movie.title ?? "No Title Found",
                  description: movie.overview ?? "No Overview Available");
            },
          );
        }
      },
    );
  }
}

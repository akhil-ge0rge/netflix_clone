import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/fastLaugh/fast_laugh_bloc.dart';

import 'widget/video_card.dart';

class FastLaughScreen extends StatelessWidget {
  const FastLaughScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<FastLaughBloc>(context).add(const Initialize());
    });
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<FastLaughBloc, FastLaughState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.isError) {
              return const Center(
                child: Icon(
                  Icons.wifi_off_rounded,
                  color: Colors.red,
                ),
              );
            } else if (state.videosList.isEmpty) {
              return const Center(
                child: Icon(
                  Icons.wifi_off_rounded,
                  color: Colors.red,
                ),
              );
            } else {
              return PageView(
                scrollDirection: Axis.vertical,
                children: List.generate(
                  state.videosList.length,
                  (index) => VideoListCardItemInheritedWidget(
                      movieData: state.videosList.elementAt(index),
                      widget: VideoCard(
                        index: index,
                        key: Key(index.toString()),
                      )),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}

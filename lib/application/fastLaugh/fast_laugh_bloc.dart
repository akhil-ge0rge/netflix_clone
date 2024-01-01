import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/downloads/i_downloads_repo.dart';

import '../../domain/downloads/models/downloads.dart';

part 'fast_laugh_event.dart';
part 'fast_laugh_state.dart';
part 'fast_laugh_bloc.freezed.dart';

final videoUrls = [
  'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
  'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4',
  'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4',
  'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4',
  'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4',
];

@injectable
class FastLaughBloc extends Bloc<FastLaughEvent, FastLaughState> {
  FastLaughBloc(
    IDownloadsRepo _downloadsServices,
  ) : super(FastLaughState.initial()) {
    on<Initialize>((event, emit) async {
      emit(const FastLaughState(
          videosList: [], isLoading: true, isError: false, likedVideos: []));
      final _result = await _downloadsServices.getDownloadsImages();
      final _state = _result.fold(
          (l) => FastLaughState(
              videosList: [],
              isLoading: false,
              isError: true,
              likedVideos: state.likedVideos),
          (r) => FastLaughState(
              videosList: r,
              isLoading: false,
              isError: false,
              likedVideos: state.likedVideos));
      emit(_state);
    });

    on<LikeVideo>((event, emit) async {
      List<int> likedVideosCopy = List.from(state.likedVideos);
      likedVideosCopy.add(event.id);
      emit(state.copyWith(likedVideos: likedVideosCopy));
    });
    on<UnlikeVideo>((event, emit) async {
      List<int> likedVideosCopy = List.from(state.likedVideos);
      likedVideosCopy.remove(event.id);
      emit(state.copyWith(likedVideos: likedVideosCopy));
    });
  }
}

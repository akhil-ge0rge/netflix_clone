part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required List<HotAndNewData> pastYearMovieList,
    required List<HotAndNewData> trendingMovieList,
    required List<HotAndNewData> tenseAndDramaMovieList,
    required List<HotAndNewData> southIndianMovieList,
    required List<HotAndNewData> trendingTvList,
    required bool isLoading,
    required bool isError,
  }) = _Initial;

  factory HomeState.initial() => const HomeState(
      pastYearMovieList: [],
      trendingMovieList: [],
      tenseAndDramaMovieList: [],
      southIndianMovieList: [],
      trendingTvList: [],
      isLoading: false,
      isError: false);
}

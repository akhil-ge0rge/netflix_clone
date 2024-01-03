import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/hotandnew/hot_and_new_services.dart';
import 'package:netflix_clone/domain/hotandnew/model/hot_and_new_resp.dart';

import '../../domain/core/failure/main_failures.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HotAndNewServices _homeServices;
  HomeBloc(this._homeServices) : super(HomeState.initial()) {
    on<GetHomeScreenData>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final _movieResult = await _homeServices.getHotAndNewMovieData();
      final _tvResult = await _homeServices.getHotAndNewTvData();

      final state1 = _movieResult.fold(
          (MainFailure f) => const HomeState(
              pastYearMovieList: [],
              trendingMovieList: [],
              tenseAndDramaMovieList: [],
              southIndianMovieList: [],
              trendingTvList: [],
              isLoading: false,
              isError: true), (HotAndNewResp res) {
        final pastYear = res.results;
        final trending = res.results;
        final southIndian = res.results;
        final drama = res.results;
        pastYear.shuffle();
        trending.shuffle();
        southIndian.shuffle();
        drama.shuffle();
        return HomeState(
          pastYearMovieList: pastYear,
          trendingMovieList: trending,
          tenseAndDramaMovieList: drama,
          southIndianMovieList: southIndian,
          trendingTvList: state.trendingTvList,
          isLoading: false,
          isError: false,
        );
      });
      emit(state1);
      final state2 = _tvResult.fold(
          (MainFailure f) => const HomeState(
              pastYearMovieList: [],
              trendingMovieList: [],
              tenseAndDramaMovieList: [],
              southIndianMovieList: [],
              trendingTvList: [],
              isLoading: false,
              isError: true), (HotAndNewResp res) {
        final tvList = res.results;
        tvList.shuffle();
        return HomeState(
          pastYearMovieList: state.pastYearMovieList,
          trendingMovieList: state.trendingMovieList,
          tenseAndDramaMovieList: state.tenseAndDramaMovieList,
          southIndianMovieList: state.southIndianMovieList,
          trendingTvList: tvList,
          isLoading: false,
          isError: false,
        );
      });
      emit(state2);
    });
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/failure/main_failures.dart';
import 'package:netflix_clone/domain/hotandnew/hot_and_new_services.dart';

import '../../domain/hotandnew/model/hot_and_new_resp.dart';

part 'hot_and_new_event.dart';
part 'hot_and_new_state.dart';
part 'hot_and_new_bloc.freezed.dart';

@injectable
class HotAndNewBloc extends Bloc<HotAndNewEvent, HotAndNewState> {
  final HotAndNewServices _hotAndNewServices;
  HotAndNewBloc(this._hotAndNewServices) : super(HotAndNewState.initial()) {
    //HOT AND NEW MOVIE DATA
    on<LoadDataInCommingSoon>((event, emit) async {
      emit(const HotAndNewState(
          commingSoonList: [],
          everyoneWatchingList: [],
          isLoading: true,
          isError: false));
      final _result = await _hotAndNewServices.getHotAndNewMovieData();
      final _state = _result.fold((MainFailure f) {
        print("Hello");
        return const HotAndNewState(
            commingSoonList: [],
            everyoneWatchingList: [],
            isLoading: false,
            isError: true);
      }, (HotAndNewResp r) {
        print("Hiii");
        print(r.results);
        return HotAndNewState(
            commingSoonList: r.results,
            everyoneWatchingList: state.everyoneWatchingList,
            isLoading: false,
            isError: false);
      });
      emit(_state);
    });
    //HOT AND NEW TV DATA
    on<LoadDataInEveryoneIsWatching>((event, emit) async {
      _hotAndNewServices.getHotAndNewTvData();
    });
  }
}

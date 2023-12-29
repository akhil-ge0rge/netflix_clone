import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/failure/main_failures.dart';
import 'package:netflix_clone/domain/downloads/i_downloads_repo.dart';
import 'package:netflix_clone/domain/search/search_services.dart';

import '../../domain/downloads/models/downloads.dart';
import '../../domain/search/model/search_resp/search_resp.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IDownloadsRepo _downloadsService;
  final SearchServices _searchServices;

  SearchBloc(this._downloadsService, this._searchServices)
      : super(SearchState.initial()) {
    //IDLE STATE
    on<Initialize>((event, emit) async {
      if (state.idleList.isNotEmpty) {
        emit(state);
        return;
      }
      emit(const SearchState(
        searchResultList: [],
        idleList: [],
        isloading: true,
        isError: false,
      ));
      final result = await _downloadsService.getDownloadsImages();
      result.fold(
        (MainFailure f) => emit(const SearchState(
          searchResultList: [],
          idleList: [],
          isloading: false,
          isError: true,
        )),
        (List<Downloads> list) => emit(SearchState(
          searchResultList: [],
          idleList: list,
          isloading: false,
          isError: false,
        )),
      );
    });
    //Search Result State
    on<SearchMovie>((event, emit) async {
      emit(const SearchState(
        searchResultList: [],
        idleList: [],
        isloading: true,
        isError: false,
      ));
      final _result =
          await _searchServices.searchMovies(movieQuery: event.movieQuery);
      _result.fold(
        (MainFailure f) => emit(const SearchState(
          searchResultList: [],
          idleList: [],
          isloading: false,
          isError: true,
        )),
        (SearchResp r) => emit(SearchState(
          searchResultList: r.results,
          idleList: [],
          isloading: false,
          isError: false,
        )),
      );
    });
  }
}

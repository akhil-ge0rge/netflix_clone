import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/core/failure/main_failures.dart';
import 'package:netflix_clone/domain/search/model/search_resp/search_resp.dart';

abstract class SearchServices {
  Future<Either<MainFailure, SearchResp>> searchMovies(
      {required String movieQuery});
}

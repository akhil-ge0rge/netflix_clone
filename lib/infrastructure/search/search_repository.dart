import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/failure/main_failures.dart';
import 'package:netflix_clone/domain/search/model/search_resp/search_resp.dart';
import 'package:netflix_clone/domain/search/search_services.dart';

import '../../domain/core/api_end_points.dart';

@LazySingleton(as: SearchServices)
class SearchRepository implements SearchServices {
  @override
  Future<Either<MainFailure, SearchResp>> searchMovies(
      {required String movieQuery}) async {
    try {
      final Response response = await Dio(BaseOptions()).get(
          ApiEndPoints.SEARCH_API_END_POINT,
          queryParameters: {'query': movieQuery});
      if (response.statusCode == 200 || response.statusCode == 201) {
        final searchResult = SearchResp.fromJson(response.data);
        return Right(searchResult);
      } else {
        return const Left(MainFailure.serverFailiure());
      }
    } catch (_) {
      return const Left(MainFailure.clientFailiure());
    }
  }
}

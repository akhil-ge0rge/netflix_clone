import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/api_end_points.dart';
import 'package:netflix_clone/domain/core/failure/main_failures.dart';
import 'package:netflix_clone/domain/hotandnew/hot_and_new_services.dart';
import 'package:netflix_clone/domain/hotandnew/model/hot_and_new_resp.dart';

@LazySingleton(as: HotAndNewServices)
class HotAndNewRepository implements HotAndNewServices {
  @override
  Future<Either<MainFailure, HotAndNewResp>> getHotAndNewMovieData() async {
    try {
      final Response response = await Dio(BaseOptions())
          .get(ApiEndPoints.HOTANDNEWMOVIE_API_END_POINT);
      print(ApiEndPoints.HOTANDNEWMOVIE_API_END_POINT);
      if (response.statusCode == 200 || response.statusCode == 201) {
        print("201");
        final hotAndNewResult = HotAndNewResp.fromJson(response.data);
        print(hotAndNewResult.results.toString());
        return Right(hotAndNewResult);
      } else {
        print("404");
        return const Left(MainFailure.serverFailiure());
      }
    } catch (x) {
      log(x.toString());
      return const Left(MainFailure.clientFailiure());
    }
  }

  @override
  Future<Either<MainFailure, HotAndNewResp>> getHotAndNewTvData() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.HOTANDNEWTV_API_END_POINT);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final hotAndNewResult = HotAndNewResp.fromJson(response.data);
        return Right(hotAndNewResult);
      } else {
        return const Left(MainFailure.serverFailiure());
      }
    } catch (_) {
      return const Left(MainFailure.clientFailiure());
    }
  }
}

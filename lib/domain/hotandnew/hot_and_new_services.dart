import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/core/failure/main_failures.dart';
import 'package:netflix_clone/domain/hotandnew/model/hot_and_new_resp.dart';

abstract class HotAndNewServices {
  Future<Either<MainFailure, HotAndNewResp>> getHotAndNewMovieData();
  Future<Either<MainFailure, HotAndNewResp>> getHotAndNewTvData();
}

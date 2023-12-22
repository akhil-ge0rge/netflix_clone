import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:netflix_clone/domain/core/api_end_points.dart';
import 'package:netflix_clone/domain/core/failure/main_failures.dart';
import 'package:netflix_clone/domain/downloads/i_downloads_repo.dart';
import 'package:netflix_clone/domain/downloads/models/downloads.dart';

class DownloadRepository implements IDownloadsRepo {
  @override
  Future<Either<MainFailure, List<Downloads>>> getDownloadsImages() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.DOWNLOAD_API_END_POINT);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<Downloads> downloadList = [];
        for (var data in response.data) {
          downloadList.add(Downloads.fromJson(data as Map<String, dynamic>));
        }
        log(downloadList.toString());
        return Right(downloadList);
      } else {
        return const Left(MainFailure.serverFailiure());
      }
    } catch (_) {
      return const Left(MainFailure.clientFailiure());
    }
  }
}

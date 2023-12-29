import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/api_end_points.dart';
import 'package:netflix_clone/domain/core/failure/main_failures.dart';
import 'package:netflix_clone/domain/downloads/i_downloads_repo.dart';
import 'package:netflix_clone/domain/downloads/models/downloads.dart';

@LazySingleton(as: IDownloadsRepo)
class DownloadRepository implements IDownloadsRepo {
  @override
  Future<Either<MainFailure, List<Downloads>>> getDownloadsImages() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.DOWNLOAD_API_END_POINT);
      if (response.statusCode == 200 || response.statusCode == 201) {
        print("Data is here");
        final downloadList = (response.data['results'] as List)
            .map((e) => Downloads.fromJson(e))
            .toList();

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

import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/core/failure/main_failures.dart';
import 'package:netflix_clone/domain/downloads/models/downloads.dart';

abstract class IDownloadsRepo {
  Future<Either<MainFailure, List<Downloads>>> getDownloadsImages();
}

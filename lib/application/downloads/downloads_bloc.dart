import 'dart:developer';
import 'dart:ffi';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/downloads/i_downloads_repo.dart';
import 'package:netflix_clone/domain/downloads/models/downloads.dart';

import '../../domain/core/failure/main_failures.dart';
part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final IDownloadsRepo _downloadsRepo;
  DownloadsBloc(this._downloadsRepo) : super(DownloadsState.initial()) {
    on<_GetDownloadsEvent>((event, emit) async {
      emit(
        state.copyWith(
          isloading: true,
          downloadsFailureOrSucess: none(),
        ),
      );
      final Either<MainFailure, List<Downloads>> downloadOption =
          await _downloadsRepo.getDownloadsImages();

      log(downloadOption.toString());

      emit(
        downloadOption.fold(
          (failure) {
            print("Fuck Pops");
            return state.copyWith(
              isloading: false,
              downloads: [],
              downloadsFailureOrSucess: Some(
                Left(failure),
              ),
            );
          },
          (sucess) {
            print("Fuck Lops");
            return state.copyWith(
              isloading: false,
              downloads: sucess,
              downloadsFailureOrSucess: Some(
                Right(sucess),
              ),
            );
          },
        ),
      );
    });
  }
}

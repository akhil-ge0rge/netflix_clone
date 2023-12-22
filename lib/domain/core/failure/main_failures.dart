import 'package:freezed_annotation/freezed_annotation.dart';
part 'main_failures.freezed.dart';

@freezed
class MainFailure with _$MainFailure {
  const factory MainFailure.clientFailiure() = _ClientFailiure;
  const factory MainFailure.serverFailiure() = _ServerFailiure;
}

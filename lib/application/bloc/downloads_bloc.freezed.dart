// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'downloads_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DownloadsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloadsImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDownloadsImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloadsImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloadsEvent value) getDownloadsImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDownloadsEvent value)? getDownloadsImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloadsEvent value)? getDownloadsImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsEventCopyWith<$Res> {
  factory $DownloadsEventCopyWith(
          DownloadsEvent value, $Res Function(DownloadsEvent) then) =
      _$DownloadsEventCopyWithImpl<$Res, DownloadsEvent>;
}

/// @nodoc
class _$DownloadsEventCopyWithImpl<$Res, $Val extends DownloadsEvent>
    implements $DownloadsEventCopyWith<$Res> {
  _$DownloadsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetDownloadsEventImplCopyWith<$Res> {
  factory _$$GetDownloadsEventImplCopyWith(_$GetDownloadsEventImpl value,
          $Res Function(_$GetDownloadsEventImpl) then) =
      __$$GetDownloadsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetDownloadsEventImplCopyWithImpl<$Res>
    extends _$DownloadsEventCopyWithImpl<$Res, _$GetDownloadsEventImpl>
    implements _$$GetDownloadsEventImplCopyWith<$Res> {
  __$$GetDownloadsEventImplCopyWithImpl(_$GetDownloadsEventImpl _value,
      $Res Function(_$GetDownloadsEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetDownloadsEventImpl implements _GetDownloadsEvent {
  const _$GetDownloadsEventImpl();

  @override
  String toString() {
    return 'DownloadsEvent.getDownloadsImages()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetDownloadsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloadsImages,
  }) {
    return getDownloadsImages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDownloadsImages,
  }) {
    return getDownloadsImages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloadsImages,
    required TResult orElse(),
  }) {
    if (getDownloadsImages != null) {
      return getDownloadsImages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloadsEvent value) getDownloadsImages,
  }) {
    return getDownloadsImages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDownloadsEvent value)? getDownloadsImages,
  }) {
    return getDownloadsImages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloadsEvent value)? getDownloadsImages,
    required TResult orElse(),
  }) {
    if (getDownloadsImages != null) {
      return getDownloadsImages(this);
    }
    return orElse();
  }
}

abstract class _GetDownloadsEvent implements DownloadsEvent {
  const factory _GetDownloadsEvent() = _$GetDownloadsEventImpl;
}

/// @nodoc
mixin _$DownloadsState {
  bool get isloading => throw _privateConstructorUsedError;
  List<Downloads>? get downloads => throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<Downloads>>> get downloadsFailureOrSucess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DownloadsStateCopyWith<DownloadsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsStateCopyWith<$Res> {
  factory $DownloadsStateCopyWith(
          DownloadsState value, $Res Function(DownloadsState) then) =
      _$DownloadsStateCopyWithImpl<$Res, DownloadsState>;
  @useResult
  $Res call(
      {bool isloading,
      List<Downloads>? downloads,
      Option<Either<MainFailure, List<Downloads>>> downloadsFailureOrSucess});
}

/// @nodoc
class _$DownloadsStateCopyWithImpl<$Res, $Val extends DownloadsState>
    implements $DownloadsStateCopyWith<$Res> {
  _$DownloadsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloading = null,
    Object? downloads = freezed,
    Object? downloadsFailureOrSucess = null,
  }) {
    return _then(_value.copyWith(
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      downloads: freezed == downloads
          ? _value.downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as List<Downloads>?,
      downloadsFailureOrSucess: null == downloadsFailureOrSucess
          ? _value.downloadsFailureOrSucess
          : downloadsFailureOrSucess // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<Downloads>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DownloadsStateImplCopyWith<$Res>
    implements $DownloadsStateCopyWith<$Res> {
  factory _$$DownloadsStateImplCopyWith(_$DownloadsStateImpl value,
          $Res Function(_$DownloadsStateImpl) then) =
      __$$DownloadsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isloading,
      List<Downloads>? downloads,
      Option<Either<MainFailure, List<Downloads>>> downloadsFailureOrSucess});
}

/// @nodoc
class __$$DownloadsStateImplCopyWithImpl<$Res>
    extends _$DownloadsStateCopyWithImpl<$Res, _$DownloadsStateImpl>
    implements _$$DownloadsStateImplCopyWith<$Res> {
  __$$DownloadsStateImplCopyWithImpl(
      _$DownloadsStateImpl _value, $Res Function(_$DownloadsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloading = null,
    Object? downloads = freezed,
    Object? downloadsFailureOrSucess = null,
  }) {
    return _then(_$DownloadsStateImpl(
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      downloads: freezed == downloads
          ? _value._downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as List<Downloads>?,
      downloadsFailureOrSucess: null == downloadsFailureOrSucess
          ? _value.downloadsFailureOrSucess
          : downloadsFailureOrSucess // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<Downloads>>>,
    ));
  }
}

/// @nodoc

class _$DownloadsStateImpl implements _DownloadsState {
  const _$DownloadsStateImpl(
      {required this.isloading,
      final List<Downloads>? downloads,
      required this.downloadsFailureOrSucess})
      : _downloads = downloads;

  @override
  final bool isloading;
  final List<Downloads>? _downloads;
  @override
  List<Downloads>? get downloads {
    final value = _downloads;
    if (value == null) return null;
    if (_downloads is EqualUnmodifiableListView) return _downloads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Option<Either<MainFailure, List<Downloads>>> downloadsFailureOrSucess;

  @override
  String toString() {
    return 'DownloadsState(isloading: $isloading, downloads: $downloads, downloadsFailureOrSucess: $downloadsFailureOrSucess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadsStateImpl &&
            (identical(other.isloading, isloading) ||
                other.isloading == isloading) &&
            const DeepCollectionEquality()
                .equals(other._downloads, _downloads) &&
            (identical(
                    other.downloadsFailureOrSucess, downloadsFailureOrSucess) ||
                other.downloadsFailureOrSucess == downloadsFailureOrSucess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isloading,
      const DeepCollectionEquality().hash(_downloads),
      downloadsFailureOrSucess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadsStateImplCopyWith<_$DownloadsStateImpl> get copyWith =>
      __$$DownloadsStateImplCopyWithImpl<_$DownloadsStateImpl>(
          this, _$identity);
}

abstract class _DownloadsState implements DownloadsState {
  const factory _DownloadsState(
      {required final bool isloading,
      final List<Downloads>? downloads,
      required final Option<Either<MainFailure, List<Downloads>>>
          downloadsFailureOrSucess}) = _$DownloadsStateImpl;

  @override
  bool get isloading;
  @override
  List<Downloads>? get downloads;
  @override
  Option<Either<MainFailure, List<Downloads>>> get downloadsFailureOrSucess;
  @override
  @JsonKey(ignore: true)
  _$$DownloadsStateImplCopyWith<_$DownloadsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

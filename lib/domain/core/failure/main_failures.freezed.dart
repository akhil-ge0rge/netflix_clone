// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFailiure,
    required TResult Function() serverFailiure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clientFailiure,
    TResult? Function()? serverFailiure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFailiure,
    TResult Function()? serverFailiure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailiure value) clientFailiure,
    required TResult Function(_ServerFailiure value) serverFailiure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientFailiure value)? clientFailiure,
    TResult? Function(_ServerFailiure value)? serverFailiure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailiure value)? clientFailiure,
    TResult Function(_ServerFailiure value)? serverFailiure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainFailureCopyWith<$Res> {
  factory $MainFailureCopyWith(
          MainFailure value, $Res Function(MainFailure) then) =
      _$MainFailureCopyWithImpl<$Res, MainFailure>;
}

/// @nodoc
class _$MainFailureCopyWithImpl<$Res, $Val extends MainFailure>
    implements $MainFailureCopyWith<$Res> {
  _$MainFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ClientFailiureImplCopyWith<$Res> {
  factory _$$ClientFailiureImplCopyWith(_$ClientFailiureImpl value,
          $Res Function(_$ClientFailiureImpl) then) =
      __$$ClientFailiureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClientFailiureImplCopyWithImpl<$Res>
    extends _$MainFailureCopyWithImpl<$Res, _$ClientFailiureImpl>
    implements _$$ClientFailiureImplCopyWith<$Res> {
  __$$ClientFailiureImplCopyWithImpl(
      _$ClientFailiureImpl _value, $Res Function(_$ClientFailiureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClientFailiureImpl implements _ClientFailiure {
  const _$ClientFailiureImpl();

  @override
  String toString() {
    return 'MainFailure.clientFailiure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClientFailiureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFailiure,
    required TResult Function() serverFailiure,
  }) {
    return clientFailiure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clientFailiure,
    TResult? Function()? serverFailiure,
  }) {
    return clientFailiure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFailiure,
    TResult Function()? serverFailiure,
    required TResult orElse(),
  }) {
    if (clientFailiure != null) {
      return clientFailiure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailiure value) clientFailiure,
    required TResult Function(_ServerFailiure value) serverFailiure,
  }) {
    return clientFailiure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientFailiure value)? clientFailiure,
    TResult? Function(_ServerFailiure value)? serverFailiure,
  }) {
    return clientFailiure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailiure value)? clientFailiure,
    TResult Function(_ServerFailiure value)? serverFailiure,
    required TResult orElse(),
  }) {
    if (clientFailiure != null) {
      return clientFailiure(this);
    }
    return orElse();
  }
}

abstract class _ClientFailiure implements MainFailure {
  const factory _ClientFailiure() = _$ClientFailiureImpl;
}

/// @nodoc
abstract class _$$ServerFailiureImplCopyWith<$Res> {
  factory _$$ServerFailiureImplCopyWith(_$ServerFailiureImpl value,
          $Res Function(_$ServerFailiureImpl) then) =
      __$$ServerFailiureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerFailiureImplCopyWithImpl<$Res>
    extends _$MainFailureCopyWithImpl<$Res, _$ServerFailiureImpl>
    implements _$$ServerFailiureImplCopyWith<$Res> {
  __$$ServerFailiureImplCopyWithImpl(
      _$ServerFailiureImpl _value, $Res Function(_$ServerFailiureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServerFailiureImpl implements _ServerFailiure {
  const _$ServerFailiureImpl();

  @override
  String toString() {
    return 'MainFailure.serverFailiure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerFailiureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFailiure,
    required TResult Function() serverFailiure,
  }) {
    return serverFailiure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clientFailiure,
    TResult? Function()? serverFailiure,
  }) {
    return serverFailiure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFailiure,
    TResult Function()? serverFailiure,
    required TResult orElse(),
  }) {
    if (serverFailiure != null) {
      return serverFailiure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailiure value) clientFailiure,
    required TResult Function(_ServerFailiure value) serverFailiure,
  }) {
    return serverFailiure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientFailiure value)? clientFailiure,
    TResult? Function(_ServerFailiure value)? serverFailiure,
  }) {
    return serverFailiure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailiure value)? clientFailiure,
    TResult Function(_ServerFailiure value)? serverFailiure,
    required TResult orElse(),
  }) {
    if (serverFailiure != null) {
      return serverFailiure(this);
    }
    return orElse();
  }
}

abstract class _ServerFailiure implements MainFailure {
  const factory _ServerFailiure() = _$ServerFailiureImpl;
}

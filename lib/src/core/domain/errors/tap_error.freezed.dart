// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tap_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TapError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() tooManyTaps,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? tooManyTaps,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tooManyTaps,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TooManyTap value) tooManyTaps,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TooManyTap value)? tooManyTaps,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TooManyTap value)? tooManyTaps,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TapErrorCopyWith<$Res> {
  factory $TapErrorCopyWith(TapError value, $Res Function(TapError) then) =
      _$TapErrorCopyWithImpl<$Res, TapError>;
}

/// @nodoc
class _$TapErrorCopyWithImpl<$Res, $Val extends TapError>
    implements $TapErrorCopyWith<$Res> {
  _$TapErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TooManyTapImplCopyWith<$Res> {
  factory _$$TooManyTapImplCopyWith(
          _$TooManyTapImpl value, $Res Function(_$TooManyTapImpl) then) =
      __$$TooManyTapImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TooManyTapImplCopyWithImpl<$Res>
    extends _$TapErrorCopyWithImpl<$Res, _$TooManyTapImpl>
    implements _$$TooManyTapImplCopyWith<$Res> {
  __$$TooManyTapImplCopyWithImpl(
      _$TooManyTapImpl _value, $Res Function(_$TooManyTapImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TooManyTapImpl implements _TooManyTap {
  const _$TooManyTapImpl();

  @override
  String toString() {
    return 'TapError.tooManyTaps()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TooManyTapImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() tooManyTaps,
  }) {
    return tooManyTaps();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? tooManyTaps,
  }) {
    return tooManyTaps?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tooManyTaps,
    required TResult orElse(),
  }) {
    if (tooManyTaps != null) {
      return tooManyTaps();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TooManyTap value) tooManyTaps,
  }) {
    return tooManyTaps(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TooManyTap value)? tooManyTaps,
  }) {
    return tooManyTaps?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TooManyTap value)? tooManyTaps,
    required TResult orElse(),
  }) {
    if (tooManyTaps != null) {
      return tooManyTaps(this);
    }
    return orElse();
  }
}

abstract class _TooManyTap implements TapError {
  const factory _TooManyTap() = _$TooManyTapImpl;
}

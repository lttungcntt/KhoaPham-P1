// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApiError _$ApiErrorFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _ApiError.fromJson(json);
    case 'server':
      return _Server.fromJson(json);
    case 'network':
      return _Network.fromJson(json);
    case 'internal':
      return _Internal.fromJson(json);
    case 'cancelled':
      return _Cancelled.fromJson(json);
    case 'unexpected':
      return _Unexpected.fromJson(json);
    case 'unauthorized':
      return _Unauthorized.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ApiError',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ApiError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int? code, String message) $default, {
    required TResult Function(int? code, String message) server,
    required TResult Function(int? code, String message) network,
    required TResult Function(String message) internal,
    required TResult Function() cancelled,
    required TResult Function() unexpected,
    required TResult Function(String message) unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int? code, String message)? $default, {
    TResult? Function(int? code, String message)? server,
    TResult? Function(int? code, String message)? network,
    TResult? Function(String message)? internal,
    TResult? Function()? cancelled,
    TResult? Function()? unexpected,
    TResult? Function(String message)? unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int? code, String message)? $default, {
    TResult Function(int? code, String message)? server,
    TResult Function(int? code, String message)? network,
    TResult Function(String message)? internal,
    TResult Function()? cancelled,
    TResult Function()? unexpected,
    TResult Function(String message)? unauthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ApiError value) $default, {
    required TResult Function(_Server value) server,
    required TResult Function(_Network value) network,
    required TResult Function(_Internal value) internal,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_Unauthorized value) unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ApiError value)? $default, {
    TResult? Function(_Server value)? server,
    TResult? Function(_Network value)? network,
    TResult? Function(_Internal value)? internal,
    TResult? Function(_Cancelled value)? cancelled,
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_Unauthorized value)? unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ApiError value)? $default, {
    TResult Function(_Server value)? server,
    TResult Function(_Network value)? network,
    TResult Function(_Internal value)? internal,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_Unauthorized value)? unauthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiErrorCopyWith<$Res> {
  factory $ApiErrorCopyWith(ApiError value, $Res Function(ApiError) then) =
      _$ApiErrorCopyWithImpl<$Res, ApiError>;
}

/// @nodoc
class _$ApiErrorCopyWithImpl<$Res, $Val extends ApiError>
    implements $ApiErrorCopyWith<$Res> {
  _$ApiErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ApiErrorImplCopyWith<$Res> {
  factory _$$ApiErrorImplCopyWith(
          _$ApiErrorImpl value, $Res Function(_$ApiErrorImpl) then) =
      __$$ApiErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? code, String message});
}

/// @nodoc
class __$$ApiErrorImplCopyWithImpl<$Res>
    extends _$ApiErrorCopyWithImpl<$Res, _$ApiErrorImpl>
    implements _$$ApiErrorImplCopyWith<$Res> {
  __$$ApiErrorImplCopyWithImpl(
      _$ApiErrorImpl _value, $Res Function(_$ApiErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = null,
  }) {
    return _then(_$ApiErrorImpl(
      freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiErrorImpl extends _ApiError {
  _$ApiErrorImpl(this.code, this.message, {final String? $type})
      : $type = $type ?? 'default',
        super._();

  factory _$ApiErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiErrorImplFromJson(json);

  @override
  final int? code;
  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiError(code: $code, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiErrorImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiErrorImplCopyWith<_$ApiErrorImpl> get copyWith =>
      __$$ApiErrorImplCopyWithImpl<_$ApiErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int? code, String message) $default, {
    required TResult Function(int? code, String message) server,
    required TResult Function(int? code, String message) network,
    required TResult Function(String message) internal,
    required TResult Function() cancelled,
    required TResult Function() unexpected,
    required TResult Function(String message) unauthorized,
  }) {
    return $default(code, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int? code, String message)? $default, {
    TResult? Function(int? code, String message)? server,
    TResult? Function(int? code, String message)? network,
    TResult? Function(String message)? internal,
    TResult? Function()? cancelled,
    TResult? Function()? unexpected,
    TResult? Function(String message)? unauthorized,
  }) {
    return $default?.call(code, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int? code, String message)? $default, {
    TResult Function(int? code, String message)? server,
    TResult Function(int? code, String message)? network,
    TResult Function(String message)? internal,
    TResult Function()? cancelled,
    TResult Function()? unexpected,
    TResult Function(String message)? unauthorized,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(code, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ApiError value) $default, {
    required TResult Function(_Server value) server,
    required TResult Function(_Network value) network,
    required TResult Function(_Internal value) internal,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_Unauthorized value) unauthorized,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ApiError value)? $default, {
    TResult? Function(_Server value)? server,
    TResult? Function(_Network value)? network,
    TResult? Function(_Internal value)? internal,
    TResult? Function(_Cancelled value)? cancelled,
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_Unauthorized value)? unauthorized,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ApiError value)? $default, {
    TResult Function(_Server value)? server,
    TResult Function(_Network value)? network,
    TResult Function(_Internal value)? internal,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_Unauthorized value)? unauthorized,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiErrorImplToJson(
      this,
    );
  }
}

abstract class _ApiError extends ApiError {
  factory _ApiError(final int? code, final String message) = _$ApiErrorImpl;
  _ApiError._() : super._();

  factory _ApiError.fromJson(Map<String, dynamic> json) =
      _$ApiErrorImpl.fromJson;

  int? get code;
  String get message;
  @JsonKey(ignore: true)
  _$$ApiErrorImplCopyWith<_$ApiErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerImplCopyWith<$Res> {
  factory _$$ServerImplCopyWith(
          _$ServerImpl value, $Res Function(_$ServerImpl) then) =
      __$$ServerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? code, String message});
}

/// @nodoc
class __$$ServerImplCopyWithImpl<$Res>
    extends _$ApiErrorCopyWithImpl<$Res, _$ServerImpl>
    implements _$$ServerImplCopyWith<$Res> {
  __$$ServerImplCopyWithImpl(
      _$ServerImpl _value, $Res Function(_$ServerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = null,
  }) {
    return _then(_$ServerImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerImpl extends _Server {
  _$ServerImpl({this.code, required this.message, final String? $type})
      : $type = $type ?? 'server',
        super._();

  factory _$ServerImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerImplFromJson(json);

  @override
  final int? code;
  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiError.server(code: $code, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerImplCopyWith<_$ServerImpl> get copyWith =>
      __$$ServerImplCopyWithImpl<_$ServerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int? code, String message) $default, {
    required TResult Function(int? code, String message) server,
    required TResult Function(int? code, String message) network,
    required TResult Function(String message) internal,
    required TResult Function() cancelled,
    required TResult Function() unexpected,
    required TResult Function(String message) unauthorized,
  }) {
    return server(code, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int? code, String message)? $default, {
    TResult? Function(int? code, String message)? server,
    TResult? Function(int? code, String message)? network,
    TResult? Function(String message)? internal,
    TResult? Function()? cancelled,
    TResult? Function()? unexpected,
    TResult? Function(String message)? unauthorized,
  }) {
    return server?.call(code, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int? code, String message)? $default, {
    TResult Function(int? code, String message)? server,
    TResult Function(int? code, String message)? network,
    TResult Function(String message)? internal,
    TResult Function()? cancelled,
    TResult Function()? unexpected,
    TResult Function(String message)? unauthorized,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(code, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ApiError value) $default, {
    required TResult Function(_Server value) server,
    required TResult Function(_Network value) network,
    required TResult Function(_Internal value) internal,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_Unauthorized value) unauthorized,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ApiError value)? $default, {
    TResult? Function(_Server value)? server,
    TResult? Function(_Network value)? network,
    TResult? Function(_Internal value)? internal,
    TResult? Function(_Cancelled value)? cancelled,
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_Unauthorized value)? unauthorized,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ApiError value)? $default, {
    TResult Function(_Server value)? server,
    TResult Function(_Network value)? network,
    TResult Function(_Internal value)? internal,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_Unauthorized value)? unauthorized,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerImplToJson(
      this,
    );
  }
}

abstract class _Server extends ApiError {
  factory _Server({final int? code, required final String message}) =
      _$ServerImpl;
  _Server._() : super._();

  factory _Server.fromJson(Map<String, dynamic> json) = _$ServerImpl.fromJson;

  int? get code;
  String get message;
  @JsonKey(ignore: true)
  _$$ServerImplCopyWith<_$ServerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkImplCopyWith<$Res> {
  factory _$$NetworkImplCopyWith(
          _$NetworkImpl value, $Res Function(_$NetworkImpl) then) =
      __$$NetworkImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? code, String message});
}

/// @nodoc
class __$$NetworkImplCopyWithImpl<$Res>
    extends _$ApiErrorCopyWithImpl<$Res, _$NetworkImpl>
    implements _$$NetworkImplCopyWith<$Res> {
  __$$NetworkImplCopyWithImpl(
      _$NetworkImpl _value, $Res Function(_$NetworkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = null,
  }) {
    return _then(_$NetworkImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NetworkImpl extends _Network {
  _$NetworkImpl({this.code, required this.message, final String? $type})
      : $type = $type ?? 'network',
        super._();

  factory _$NetworkImpl.fromJson(Map<String, dynamic> json) =>
      _$$NetworkImplFromJson(json);

  @override
  final int? code;
  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiError.network(code: $code, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkImplCopyWith<_$NetworkImpl> get copyWith =>
      __$$NetworkImplCopyWithImpl<_$NetworkImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int? code, String message) $default, {
    required TResult Function(int? code, String message) server,
    required TResult Function(int? code, String message) network,
    required TResult Function(String message) internal,
    required TResult Function() cancelled,
    required TResult Function() unexpected,
    required TResult Function(String message) unauthorized,
  }) {
    return network(code, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int? code, String message)? $default, {
    TResult? Function(int? code, String message)? server,
    TResult? Function(int? code, String message)? network,
    TResult? Function(String message)? internal,
    TResult? Function()? cancelled,
    TResult? Function()? unexpected,
    TResult? Function(String message)? unauthorized,
  }) {
    return network?.call(code, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int? code, String message)? $default, {
    TResult Function(int? code, String message)? server,
    TResult Function(int? code, String message)? network,
    TResult Function(String message)? internal,
    TResult Function()? cancelled,
    TResult Function()? unexpected,
    TResult Function(String message)? unauthorized,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(code, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ApiError value) $default, {
    required TResult Function(_Server value) server,
    required TResult Function(_Network value) network,
    required TResult Function(_Internal value) internal,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_Unauthorized value) unauthorized,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ApiError value)? $default, {
    TResult? Function(_Server value)? server,
    TResult? Function(_Network value)? network,
    TResult? Function(_Internal value)? internal,
    TResult? Function(_Cancelled value)? cancelled,
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_Unauthorized value)? unauthorized,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ApiError value)? $default, {
    TResult Function(_Server value)? server,
    TResult Function(_Network value)? network,
    TResult Function(_Internal value)? internal,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_Unauthorized value)? unauthorized,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NetworkImplToJson(
      this,
    );
  }
}

abstract class _Network extends ApiError {
  factory _Network({final int? code, required final String message}) =
      _$NetworkImpl;
  _Network._() : super._();

  factory _Network.fromJson(Map<String, dynamic> json) = _$NetworkImpl.fromJson;

  int? get code;
  String get message;
  @JsonKey(ignore: true)
  _$$NetworkImplCopyWith<_$NetworkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InternalImplCopyWith<$Res> {
  factory _$$InternalImplCopyWith(
          _$InternalImpl value, $Res Function(_$InternalImpl) then) =
      __$$InternalImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$InternalImplCopyWithImpl<$Res>
    extends _$ApiErrorCopyWithImpl<$Res, _$InternalImpl>
    implements _$$InternalImplCopyWith<$Res> {
  __$$InternalImplCopyWithImpl(
      _$InternalImpl _value, $Res Function(_$InternalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$InternalImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InternalImpl extends _Internal {
  _$InternalImpl(this.message, {final String? $type})
      : $type = $type ?? 'internal',
        super._();

  factory _$InternalImpl.fromJson(Map<String, dynamic> json) =>
      _$$InternalImplFromJson(json);

  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiError.internal(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InternalImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InternalImplCopyWith<_$InternalImpl> get copyWith =>
      __$$InternalImplCopyWithImpl<_$InternalImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int? code, String message) $default, {
    required TResult Function(int? code, String message) server,
    required TResult Function(int? code, String message) network,
    required TResult Function(String message) internal,
    required TResult Function() cancelled,
    required TResult Function() unexpected,
    required TResult Function(String message) unauthorized,
  }) {
    return internal(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int? code, String message)? $default, {
    TResult? Function(int? code, String message)? server,
    TResult? Function(int? code, String message)? network,
    TResult? Function(String message)? internal,
    TResult? Function()? cancelled,
    TResult? Function()? unexpected,
    TResult? Function(String message)? unauthorized,
  }) {
    return internal?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int? code, String message)? $default, {
    TResult Function(int? code, String message)? server,
    TResult Function(int? code, String message)? network,
    TResult Function(String message)? internal,
    TResult Function()? cancelled,
    TResult Function()? unexpected,
    TResult Function(String message)? unauthorized,
    required TResult orElse(),
  }) {
    if (internal != null) {
      return internal(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ApiError value) $default, {
    required TResult Function(_Server value) server,
    required TResult Function(_Network value) network,
    required TResult Function(_Internal value) internal,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_Unauthorized value) unauthorized,
  }) {
    return internal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ApiError value)? $default, {
    TResult? Function(_Server value)? server,
    TResult? Function(_Network value)? network,
    TResult? Function(_Internal value)? internal,
    TResult? Function(_Cancelled value)? cancelled,
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_Unauthorized value)? unauthorized,
  }) {
    return internal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ApiError value)? $default, {
    TResult Function(_Server value)? server,
    TResult Function(_Network value)? network,
    TResult Function(_Internal value)? internal,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_Unauthorized value)? unauthorized,
    required TResult orElse(),
  }) {
    if (internal != null) {
      return internal(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InternalImplToJson(
      this,
    );
  }
}

abstract class _Internal extends ApiError {
  factory _Internal(final String message) = _$InternalImpl;
  _Internal._() : super._();

  factory _Internal.fromJson(Map<String, dynamic> json) =
      _$InternalImpl.fromJson;

  String get message;
  @JsonKey(ignore: true)
  _$$InternalImplCopyWith<_$InternalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CancelledImplCopyWith<$Res> {
  factory _$$CancelledImplCopyWith(
          _$CancelledImpl value, $Res Function(_$CancelledImpl) then) =
      __$$CancelledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CancelledImplCopyWithImpl<$Res>
    extends _$ApiErrorCopyWithImpl<$Res, _$CancelledImpl>
    implements _$$CancelledImplCopyWith<$Res> {
  __$$CancelledImplCopyWithImpl(
      _$CancelledImpl _value, $Res Function(_$CancelledImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$CancelledImpl extends _Cancelled {
  _$CancelledImpl({final String? $type})
      : $type = $type ?? 'cancelled',
        super._();

  factory _$CancelledImpl.fromJson(Map<String, dynamic> json) =>
      _$$CancelledImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiError.cancelled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CancelledImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int? code, String message) $default, {
    required TResult Function(int? code, String message) server,
    required TResult Function(int? code, String message) network,
    required TResult Function(String message) internal,
    required TResult Function() cancelled,
    required TResult Function() unexpected,
    required TResult Function(String message) unauthorized,
  }) {
    return cancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int? code, String message)? $default, {
    TResult? Function(int? code, String message)? server,
    TResult? Function(int? code, String message)? network,
    TResult? Function(String message)? internal,
    TResult? Function()? cancelled,
    TResult? Function()? unexpected,
    TResult? Function(String message)? unauthorized,
  }) {
    return cancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int? code, String message)? $default, {
    TResult Function(int? code, String message)? server,
    TResult Function(int? code, String message)? network,
    TResult Function(String message)? internal,
    TResult Function()? cancelled,
    TResult Function()? unexpected,
    TResult Function(String message)? unauthorized,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ApiError value) $default, {
    required TResult Function(_Server value) server,
    required TResult Function(_Network value) network,
    required TResult Function(_Internal value) internal,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_Unauthorized value) unauthorized,
  }) {
    return cancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ApiError value)? $default, {
    TResult? Function(_Server value)? server,
    TResult? Function(_Network value)? network,
    TResult? Function(_Internal value)? internal,
    TResult? Function(_Cancelled value)? cancelled,
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_Unauthorized value)? unauthorized,
  }) {
    return cancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ApiError value)? $default, {
    TResult Function(_Server value)? server,
    TResult Function(_Network value)? network,
    TResult Function(_Internal value)? internal,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_Unauthorized value)? unauthorized,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CancelledImplToJson(
      this,
    );
  }
}

abstract class _Cancelled extends ApiError {
  factory _Cancelled() = _$CancelledImpl;
  _Cancelled._() : super._();

  factory _Cancelled.fromJson(Map<String, dynamic> json) =
      _$CancelledImpl.fromJson;
}

/// @nodoc
abstract class _$$UnexpectedImplCopyWith<$Res> {
  factory _$$UnexpectedImplCopyWith(
          _$UnexpectedImpl value, $Res Function(_$UnexpectedImpl) then) =
      __$$UnexpectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnexpectedImplCopyWithImpl<$Res>
    extends _$ApiErrorCopyWithImpl<$Res, _$UnexpectedImpl>
    implements _$$UnexpectedImplCopyWith<$Res> {
  __$$UnexpectedImplCopyWithImpl(
      _$UnexpectedImpl _value, $Res Function(_$UnexpectedImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$UnexpectedImpl extends _Unexpected {
  _$UnexpectedImpl({final String? $type})
      : $type = $type ?? 'unexpected',
        super._();

  factory _$UnexpectedImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnexpectedImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiError.unexpected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnexpectedImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int? code, String message) $default, {
    required TResult Function(int? code, String message) server,
    required TResult Function(int? code, String message) network,
    required TResult Function(String message) internal,
    required TResult Function() cancelled,
    required TResult Function() unexpected,
    required TResult Function(String message) unauthorized,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int? code, String message)? $default, {
    TResult? Function(int? code, String message)? server,
    TResult? Function(int? code, String message)? network,
    TResult? Function(String message)? internal,
    TResult? Function()? cancelled,
    TResult? Function()? unexpected,
    TResult? Function(String message)? unauthorized,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int? code, String message)? $default, {
    TResult Function(int? code, String message)? server,
    TResult Function(int? code, String message)? network,
    TResult Function(String message)? internal,
    TResult Function()? cancelled,
    TResult Function()? unexpected,
    TResult Function(String message)? unauthorized,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ApiError value) $default, {
    required TResult Function(_Server value) server,
    required TResult Function(_Network value) network,
    required TResult Function(_Internal value) internal,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_Unauthorized value) unauthorized,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ApiError value)? $default, {
    TResult? Function(_Server value)? server,
    TResult? Function(_Network value)? network,
    TResult? Function(_Internal value)? internal,
    TResult? Function(_Cancelled value)? cancelled,
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_Unauthorized value)? unauthorized,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ApiError value)? $default, {
    TResult Function(_Server value)? server,
    TResult Function(_Network value)? network,
    TResult Function(_Internal value)? internal,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_Unauthorized value)? unauthorized,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnexpectedImplToJson(
      this,
    );
  }
}

abstract class _Unexpected extends ApiError {
  factory _Unexpected() = _$UnexpectedImpl;
  _Unexpected._() : super._();

  factory _Unexpected.fromJson(Map<String, dynamic> json) =
      _$UnexpectedImpl.fromJson;
}

/// @nodoc
abstract class _$$UnauthorizedImplCopyWith<$Res> {
  factory _$$UnauthorizedImplCopyWith(
          _$UnauthorizedImpl value, $Res Function(_$UnauthorizedImpl) then) =
      __$$UnauthorizedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UnauthorizedImplCopyWithImpl<$Res>
    extends _$ApiErrorCopyWithImpl<$Res, _$UnauthorizedImpl>
    implements _$$UnauthorizedImplCopyWith<$Res> {
  __$$UnauthorizedImplCopyWithImpl(
      _$UnauthorizedImpl _value, $Res Function(_$UnauthorizedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UnauthorizedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnauthorizedImpl extends _Unauthorized {
  _$UnauthorizedImpl(this.message, {final String? $type})
      : $type = $type ?? 'unauthorized',
        super._();

  factory _$UnauthorizedImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnauthorizedImplFromJson(json);

  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiError.unauthorized(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnauthorizedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnauthorizedImplCopyWith<_$UnauthorizedImpl> get copyWith =>
      __$$UnauthorizedImplCopyWithImpl<_$UnauthorizedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int? code, String message) $default, {
    required TResult Function(int? code, String message) server,
    required TResult Function(int? code, String message) network,
    required TResult Function(String message) internal,
    required TResult Function() cancelled,
    required TResult Function() unexpected,
    required TResult Function(String message) unauthorized,
  }) {
    return unauthorized(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int? code, String message)? $default, {
    TResult? Function(int? code, String message)? server,
    TResult? Function(int? code, String message)? network,
    TResult? Function(String message)? internal,
    TResult? Function()? cancelled,
    TResult? Function()? unexpected,
    TResult? Function(String message)? unauthorized,
  }) {
    return unauthorized?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int? code, String message)? $default, {
    TResult Function(int? code, String message)? server,
    TResult Function(int? code, String message)? network,
    TResult Function(String message)? internal,
    TResult Function()? cancelled,
    TResult Function()? unexpected,
    TResult Function(String message)? unauthorized,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ApiError value) $default, {
    required TResult Function(_Server value) server,
    required TResult Function(_Network value) network,
    required TResult Function(_Internal value) internal,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_Unauthorized value) unauthorized,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ApiError value)? $default, {
    TResult? Function(_Server value)? server,
    TResult? Function(_Network value)? network,
    TResult? Function(_Internal value)? internal,
    TResult? Function(_Cancelled value)? cancelled,
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_Unauthorized value)? unauthorized,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ApiError value)? $default, {
    TResult Function(_Server value)? server,
    TResult Function(_Network value)? network,
    TResult Function(_Internal value)? internal,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_Unauthorized value)? unauthorized,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnauthorizedImplToJson(
      this,
    );
  }
}

abstract class _Unauthorized extends ApiError {
  factory _Unauthorized(final String message) = _$UnauthorizedImpl;
  _Unauthorized._() : super._();

  factory _Unauthorized.fromJson(Map<String, dynamic> json) =
      _$UnauthorizedImpl.fromJson;

  String get message;
  @JsonKey(ignore: true)
  _$$UnauthorizedImplCopyWith<_$UnauthorizedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

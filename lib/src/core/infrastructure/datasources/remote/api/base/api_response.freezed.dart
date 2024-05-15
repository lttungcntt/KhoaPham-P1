// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SingleApiResponse<T> _$SingleApiResponseFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _SingleApiResponse<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$SingleApiResponse<T> {
  T get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SingleApiResponseCopyWith<T, SingleApiResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleApiResponseCopyWith<T, $Res> {
  factory $SingleApiResponseCopyWith(SingleApiResponse<T> value,
          $Res Function(SingleApiResponse<T>) then) =
      _$SingleApiResponseCopyWithImpl<T, $Res, SingleApiResponse<T>>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class _$SingleApiResponseCopyWithImpl<T, $Res,
        $Val extends SingleApiResponse<T>>
    implements $SingleApiResponseCopyWith<T, $Res> {
  _$SingleApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SingleApiResponseImplCopyWith<T, $Res>
    implements $SingleApiResponseCopyWith<T, $Res> {
  factory _$$SingleApiResponseImplCopyWith(_$SingleApiResponseImpl<T> value,
          $Res Function(_$SingleApiResponseImpl<T>) then) =
      __$$SingleApiResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SingleApiResponseImplCopyWithImpl<T, $Res>
    extends _$SingleApiResponseCopyWithImpl<T, $Res, _$SingleApiResponseImpl<T>>
    implements _$$SingleApiResponseImplCopyWith<T, $Res> {
  __$$SingleApiResponseImplCopyWithImpl(_$SingleApiResponseImpl<T> _value,
      $Res Function(_$SingleApiResponseImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SingleApiResponseImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$SingleApiResponseImpl<T> implements _SingleApiResponse<T> {
  const _$SingleApiResponseImpl(this.data);

  factory _$SingleApiResponseImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$SingleApiResponseImplFromJson(json, fromJsonT);

  @override
  final T data;

  @override
  String toString() {
    return 'SingleApiResponse<$T>(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleApiResponseImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleApiResponseImplCopyWith<T, _$SingleApiResponseImpl<T>>
      get copyWith =>
          __$$SingleApiResponseImplCopyWithImpl<T, _$SingleApiResponseImpl<T>>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$SingleApiResponseImplToJson<T>(this, toJsonT);
  }
}

abstract class _SingleApiResponse<T> implements SingleApiResponse<T> {
  const factory _SingleApiResponse(final T data) = _$SingleApiResponseImpl<T>;

  factory _SingleApiResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$SingleApiResponseImpl<T>.fromJson;

  @override
  T get data;
  @override
  @JsonKey(ignore: true)
  _$$SingleApiResponseImplCopyWith<T, _$SingleApiResponseImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

ListApiResponse<T> _$ListApiResponseFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _ListApiResponse<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$ListApiResponse<T> {
  List<T> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListApiResponseCopyWith<T, ListApiResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListApiResponseCopyWith<T, $Res> {
  factory $ListApiResponseCopyWith(
          ListApiResponse<T> value, $Res Function(ListApiResponse<T>) then) =
      _$ListApiResponseCopyWithImpl<T, $Res, ListApiResponse<T>>;
  @useResult
  $Res call({List<T> data});
}

/// @nodoc
class _$ListApiResponseCopyWithImpl<T, $Res, $Val extends ListApiResponse<T>>
    implements $ListApiResponseCopyWith<T, $Res> {
  _$ListApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListApiResponseImplCopyWith<T, $Res>
    implements $ListApiResponseCopyWith<T, $Res> {
  factory _$$ListApiResponseImplCopyWith(_$ListApiResponseImpl<T> value,
          $Res Function(_$ListApiResponseImpl<T>) then) =
      __$$ListApiResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({List<T> data});
}

/// @nodoc
class __$$ListApiResponseImplCopyWithImpl<T, $Res>
    extends _$ListApiResponseCopyWithImpl<T, $Res, _$ListApiResponseImpl<T>>
    implements _$$ListApiResponseImplCopyWith<T, $Res> {
  __$$ListApiResponseImplCopyWithImpl(_$ListApiResponseImpl<T> _value,
      $Res Function(_$ListApiResponseImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ListApiResponseImpl<T>(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$ListApiResponseImpl<T> implements _ListApiResponse<T> {
  const _$ListApiResponseImpl(final List<T> data) : _data = data;

  factory _$ListApiResponseImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$ListApiResponseImplFromJson(json, fromJsonT);

  final List<T> _data;
  @override
  List<T> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ListApiResponse<$T>(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListApiResponseImpl<T> &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListApiResponseImplCopyWith<T, _$ListApiResponseImpl<T>> get copyWith =>
      __$$ListApiResponseImplCopyWithImpl<T, _$ListApiResponseImpl<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$ListApiResponseImplToJson<T>(this, toJsonT);
  }
}

abstract class _ListApiResponse<T> implements ListApiResponse<T> {
  const factory _ListApiResponse(final List<T> data) = _$ListApiResponseImpl<T>;

  factory _ListApiResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$ListApiResponseImpl<T>.fromJson;

  @override
  List<T> get data;
  @override
  @JsonKey(ignore: true)
  _$$ListApiResponseImplCopyWith<T, _$ListApiResponseImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

PagingApiResponse<T> _$PagingApiResponseFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _PagingApiResponse<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$PagingApiResponse<T> {
  List<T> get data => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PagingApiResponseCopyWith<T, PagingApiResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagingApiResponseCopyWith<T, $Res> {
  factory $PagingApiResponseCopyWith(PagingApiResponse<T> value,
          $Res Function(PagingApiResponse<T>) then) =
      _$PagingApiResponseCopyWithImpl<T, $Res, PagingApiResponse<T>>;
  @useResult
  $Res call({List<T> data, int page, int total});
}

/// @nodoc
class _$PagingApiResponseCopyWithImpl<T, $Res,
        $Val extends PagingApiResponse<T>>
    implements $PagingApiResponseCopyWith<T, $Res> {
  _$PagingApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? page = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PagingApiResponseImplCopyWith<T, $Res>
    implements $PagingApiResponseCopyWith<T, $Res> {
  factory _$$PagingApiResponseImplCopyWith(_$PagingApiResponseImpl<T> value,
          $Res Function(_$PagingApiResponseImpl<T>) then) =
      __$$PagingApiResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({List<T> data, int page, int total});
}

/// @nodoc
class __$$PagingApiResponseImplCopyWithImpl<T, $Res>
    extends _$PagingApiResponseCopyWithImpl<T, $Res, _$PagingApiResponseImpl<T>>
    implements _$$PagingApiResponseImplCopyWith<T, $Res> {
  __$$PagingApiResponseImplCopyWithImpl(_$PagingApiResponseImpl<T> _value,
      $Res Function(_$PagingApiResponseImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? page = null,
    Object? total = null,
  }) {
    return _then(_$PagingApiResponseImpl<T>(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$PagingApiResponseImpl<T> implements _PagingApiResponse<T> {
  const _$PagingApiResponseImpl(
      {required final List<T> data, required this.page, required this.total})
      : _data = data;

  factory _$PagingApiResponseImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$PagingApiResponseImplFromJson(json, fromJsonT);

  final List<T> _data;
  @override
  List<T> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final int page;
  @override
  final int total;

  @override
  String toString() {
    return 'PagingApiResponse<$T>(data: $data, page: $page, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PagingApiResponseImpl<T> &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), page, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PagingApiResponseImplCopyWith<T, _$PagingApiResponseImpl<T>>
      get copyWith =>
          __$$PagingApiResponseImplCopyWithImpl<T, _$PagingApiResponseImpl<T>>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$PagingApiResponseImplToJson<T>(this, toJsonT);
  }
}

abstract class _PagingApiResponse<T> implements PagingApiResponse<T> {
  const factory _PagingApiResponse(
      {required final List<T> data,
      required final int page,
      required final int total}) = _$PagingApiResponseImpl<T>;

  factory _PagingApiResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$PagingApiResponseImpl<T>.fromJson;

  @override
  List<T> get data;
  @override
  int get page;
  @override
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$PagingApiResponseImplCopyWith<T, _$PagingApiResponseImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

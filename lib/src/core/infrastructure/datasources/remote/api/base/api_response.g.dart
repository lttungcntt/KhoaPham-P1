// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SingleApiResponseImpl<T> _$$SingleApiResponseImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$SingleApiResponseImpl<T>(
      fromJsonT(json['data']),
    );

Map<String, dynamic> _$$SingleApiResponseImplToJson<T>(
  _$SingleApiResponseImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': toJsonT(instance.data),
    };

_$ListApiResponseImpl<T> _$$ListApiResponseImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$ListApiResponseImpl<T>(
      (json['data'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$$ListApiResponseImplToJson<T>(
  _$ListApiResponseImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': instance.data.map(toJsonT).toList(),
    };

_$PagingApiResponseImpl<T> _$$PagingApiResponseImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$PagingApiResponseImpl<T>(
      data: (json['data'] as List<dynamic>).map(fromJsonT).toList(),
      page: (json['page'] as num).toInt(),
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$$PagingApiResponseImplToJson<T>(
  _$PagingApiResponseImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': instance.data.map(toJsonT).toList(),
      'page': instance.page,
      'total': instance.total,
    };

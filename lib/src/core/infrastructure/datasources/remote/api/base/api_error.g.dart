// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiErrorImpl _$$ApiErrorImplFromJson(Map<String, dynamic> json) =>
    _$ApiErrorImpl(
      (json['code'] as num?)?.toInt(),
      json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ApiErrorImplToJson(_$ApiErrorImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'runtimeType': instance.$type,
    };

_$ServerImpl _$$ServerImplFromJson(Map<String, dynamic> json) => _$ServerImpl(
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ServerImplToJson(_$ServerImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'runtimeType': instance.$type,
    };

_$NetworkImpl _$$NetworkImplFromJson(Map<String, dynamic> json) =>
    _$NetworkImpl(
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NetworkImplToJson(_$NetworkImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'runtimeType': instance.$type,
    };

_$InternalImpl _$$InternalImplFromJson(Map<String, dynamic> json) =>
    _$InternalImpl(
      json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$InternalImplToJson(_$InternalImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };

_$CancelledImpl _$$CancelledImplFromJson(Map<String, dynamic> json) =>
    _$CancelledImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CancelledImplToJson(_$CancelledImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$UnexpectedImpl _$$UnexpectedImplFromJson(Map<String, dynamic> json) =>
    _$UnexpectedImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UnexpectedImplToJson(_$UnexpectedImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$UnauthorizedImpl _$$UnauthorizedImplFromJson(Map<String, dynamic> json) =>
    _$UnauthorizedImpl(
      json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UnauthorizedImplToJson(_$UnauthorizedImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };

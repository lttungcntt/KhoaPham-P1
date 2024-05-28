import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/converters/date_time_converter.dart';
import '../../../../common/enum/enum.dart';
import '../../domain/entities/home_detail.dart';

part 'home_detail_model.freezed.dart';
part 'home_detail_model.g.dart';

@freezed
class HomeDetailModel with _$HomeDetailModel implements IHomeDetail {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory HomeDetailModel({
    @JsonKey(name: 'id') @Default(-1) int id,
    @JsonKey(name: 'name') @Default('') String name,
    @JsonKey(name: 'info') @Default('') String info,
    @JsonKey(name: 'email') @Default('') String email,
    @JsonKey(name: 'phone_number') @Default('') String phoneNumber,
    @Iso8601DateTimeConverter() @JsonKey(name: 'birth_date') DateTime? birthDate,
    @JsonKey(name: 'address') @Default('') String address,
    @JsonKey(name: 'city') @Default('') String city,
    @JsonKey(name: 'country') @Default('') String country,
    @JsonKey(name: 'gender') @Default(Gender.other) Gender gender,
    @JsonKey(name: 'photos') @Default([]) List<String> photos,
    @JsonKey(name: 'videos') @Default([]) List<String> videos,
    @JsonKey(name: 'reels') @Default([]) List<String> reels,
  }) = _HomeDetailModel;

  factory HomeDetailModel.fromJson(json) => _$HomeDetailModelFromJson(json);
}

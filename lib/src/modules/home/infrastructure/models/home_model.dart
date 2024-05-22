import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/enum/enum.dart';
import '../../domain/entities/home.dart';

part 'home_model.freezed.dart';
part 'home_model.g.dart';

@freezed
class HomeModel with _$HomeModel implements IHome {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory HomeModel({
    @JsonKey(name: 'id') @Default(-1) int id,
    @JsonKey(name: 'name') @Default('') String name,
    @JsonKey(name: 'info') @Default('') String info,
    @JsonKey(name: 'email') @Default('') String email,
    @JsonKey(name: 'phone') @Default('') String phone,
    @JsonKey(name: 'age') @Default(-1) int age,
    @JsonKey(name: 'gender') @Default(Gender.female) Gender gender,
    @JsonKey(name: 'image') @Default('') String image,
  }) = _HomeModel;

  factory HomeModel.fromJson(json) => _$HomeModelFromJson(json);
}

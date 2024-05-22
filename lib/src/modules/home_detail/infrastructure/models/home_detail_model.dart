import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/home_detail.dart';

part 'home_detail_model.freezed.dart';
part 'home_detail_model.g.dart';

@freezed
class HomeDetailModel with _$HomeDetailModel implements IHomeDetail {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory HomeDetailModel({
    @JsonKey(name: 'id') @Default(-1) int id,
  }) = _HomeDetailModel;

  factory HomeDetailModel.fromJson(json) => _$HomeDetailModelFromJson(json);
}

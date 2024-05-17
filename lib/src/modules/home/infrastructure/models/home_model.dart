import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/home.dart';

part 'home_model.freezed.dart';
part 'home_model.g.dart';

@freezed
class HomeModel with _$HomeModel implements IHome {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory HomeModel({
    @JsonKey(name: 'id') @Default(-1) int id,
  }) = _HomeModel;

  factory HomeModel.fromJson(json) => _$HomeModelFromJson(json);
}

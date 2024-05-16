import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/dashboard.dart';

part 'dashboard_model.freezed.dart';
part 'dashboard_model.g.dart';

@freezed
class DashboardModel with _$DashboardModel implements IDashboard {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory DashboardModel({
    @JsonKey(name: 'id') @Default(-1) int id,
    @JsonKey(name: 'name') @Default('') String name,
    @JsonKey(name: 'icon') @Default('') String icon,
  }) = _DashboardModel;

  factory DashboardModel.fromJson(json) => _$DashboardModelFromJson(json);
}

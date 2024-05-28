import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jiffy/jiffy.dart';

class Iso8601DateTimeConverter extends JsonConverter<DateTime, String?> {
  const Iso8601DateTimeConverter();

  @override
  DateTime fromJson(String? json) {
    if (json == null) return DateTime.now();
    return Jiffy.parse(json).dateTime;
  }

  @override
  String? toJson(DateTime object) {
    return object.toIso8601String();
  }
}

import 'package:enum_annotation/enum_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'enum.g.dart';

@JsonEnum(valueField: 'type')
@generate
enum Gender {
  female(0),
  male(1),
  other(2);

  const Gender(this.type);

  final int type;
}

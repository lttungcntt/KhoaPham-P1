import '../../../../common/enum/enum.dart';

abstract class IHome {
  int get id;
  String get name;
  String get image;
  String get info;
  String get email;
  String get phone;
  int get age;
  Gender get gender;

  dynamic toJson();
}

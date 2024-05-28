import '../../../../common/enum/enum.dart';

abstract class IHomeDetail {
  int get id;
  String get name;
  String get email;
  String get phoneNumber;
  DateTime? get birthDate;
  String get address;
  String get city;
  String get country;
  String get info;
  Gender get gender;
  List<String> get photos;
  List<String> get videos;
  List<String> get reels;
}
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:result_dart/result_dart.dart';

import '../../../../common/enum/enum.dart';
import '../../../../common/utils/fake_mockup.dart';
import '../../../home/presentation/widgets/home_card.dart';
import '../../domain/interfaces/home_detail_interface.dart';
import '../../../../common/utils/app_environment.dart';
import '../../../../core/infrastructure/datasources/remote/api/base/api_error.dart';
import '../../../home_detail/domain/entities/home_detail.dart';
import '../../../home_detail/infrastructure/models/home_detail_model.dart';

@alpha
@LazySingleton(as: IHomeDetailRepository)
class HomeDetailMockupRepository implements IHomeDetailRepository {
  @override
  Future<Result<IHomeDetail, ApiError>> getById(int id,
      {CancelToken? token}) async {
    return const Result.success(HomeDetailModel());
  }
}

class FakeHomeDetailMockup extends FakeMockup {
  static String dummy(int index) {
    final gender =
        Gender.values[faker.randomGenerator.integer(Gender.values.length)];
    Map<String, dynamic> data = {
      'id': index,
      'name': faker.person.name(),
      'email': 'email@gmail.com',
      'phone_number': faker.phoneNumber,
      
      'info': faker.lorem.sentence(),
      'email': faker.internet.email(),
      'phone': faker.phoneNumber.us(),
      'age': faker.randomGenerator.integer(32, min: 18),
      'gender': gender.type,
      'image': faker.image.image(
        keywords: Constants.kHomeKeyWords,
        random: true,
      ),
    };
    return jsonEncode(data).toString();
  }

  // @JsonKey(name: 'phoneNumber') @Default('') String phoneNumber,
  // @JsonKey(name: 'birthDate') DateTime? birthDate,
  // @JsonKey(name: 'address') @Default('') String address,
  // @JsonKey(name: 'city') @Default('') String city,
  // @JsonKey(name: 'country') @Default('') String country,
  // @JsonKey(name: 'gender') @Default(Gender.other) Gender gender,
  // @JsonKey(name: 'photos') @Default([]) List<String> photos,
  // @JsonKey(name: 'videos') @Default([]) List<String> videos,
  // @JsonKey(name: 'reels') @Default([]) List<String> reels,
  @override
  String getSuccessJson() => '''
    {
      "result": {
        "status": 200,
        "message_code": "success",
        "message": "Success",
        "dt": "2023-02-01 10:00:00"
      }
      "data": {}
    }
    ''';
}

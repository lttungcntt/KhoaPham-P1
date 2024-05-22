import 'package:dartx/dartx.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:result_dart/result_dart.dart';
import 'dart:convert';

import '../../../../common/enum/enum.dart';
import '../../../../common/extensions/int_duration.dart';
import '../../../../core/infrastructure/datasources/remote/api/base/api_response.dart';
import '../../domain/interfaces/home_interface.dart';
import '../../../../common/utils/app_environment.dart';
import '../../../../core/infrastructure/datasources/remote/api/base/api_error.dart';
import '../../../home/domain/entities/home.dart';
import '../../../home/infrastructure/models/home_model.dart';
import '../../presentation/widgets/home_card.dart';

// final json = jsonDecode(_FakeRepository.cache());
// final response = SingleApiResponse.fromJson(json, Configuration.fromJson);
// return response.data.toSuccess();

@alpha
@LazySingleton(as: IHomeRepository)
class HomeMockupRepository implements IHomeRepository {
  @override
  Future<Result<List<IHome>, ApiError>> get({CancelToken? token}) async {
    await 3.seconds.delay;
    final json = jsonDecode(FakeHomeMockup.getSuccessJson());
    final response = ListApiResponse.fromJson(json, HomeModel.fromJson);
    return response.data.toSuccess();
  }
}

class FakeHomeMockup {
  static String dummy(int index) {
    final gender =
        Gender.values[faker.randomGenerator.integer(Gender.values.length)];
    Map<String, dynamic> data = {
      'id': index,
      'name': faker.person.name(),
      'info': faker.lorem.sentence(),
      'email': faker.internet.email(),
      'phone': faker.phoneNumber.us(),
      'age': faker.randomGenerator.integer(32, min: 18),
      'gender': gender.type,
      'image': faker.image.image(
        keywords: [
          'bikini', 'hot body girl'
        ],
        random: true,
      ),
    };
    return jsonEncode(data).toString();
  }

  static String getSuccessJson() {
    return '''
    {
      "result": {
        "status": 200,
        "message_code": "Success",
        "message": "Success",
        "dt": "2023-02-01 10:00:00"
      },
      "data": [
        ${dummy(1)},
        ${dummy(2)},
        ${dummy(3)},
        ${dummy(4)},
        ${dummy(5)},
        ${dummy(6)},
        ${dummy(7)},
        ${dummy(8)},
        ${dummy(9)},
        ${dummy(10)},
        ${dummy(11)},
        ${dummy(12)},
        ${dummy(13)}
      ]
    }
    ''';
  }
}

import 'dart:convert';

import 'package:dartx/dartx.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:result_dart/result_dart.dart';

import '../../../../common/constants/constants.dart';
import '../../../../common/enum/enum.dart';
import '../../../../common/extensions/int_duration.dart';
import '../../../../common/utils/fake_mockup.dart';
import '../../../../core/infrastructure/datasources/remote/api/base/api_response.dart';
import '../../../home/presentation/widgets/home_card.dart';
import '../../domain/interfaces/home_detail_interface.dart';
import '../../../../common/utils/app_environment.dart';
import '../../../../core/infrastructure/datasources/remote/api/base/api_error.dart';
import '../../../home_detail/domain/entities/home_detail.dart';
import '../models/home_detail_model.dart';

@alpha
@LazySingleton(as: IHomeDetailRepository)
class HomeDetailMockupRepository implements IHomeDetailRepository {
  @override
  Future<Result<IHomeDetail, ApiError>> getById(int id,
      {CancelToken? token}) async {
    // final random = faker.randomGenerator.integer(10);
    // if (random <= 1) {
    //   return ApiError.server(
    //           message:
    //               'This is a long error message from the server. It contains a lot of details about what went wrong, so that the user can understand the problem and possibly fix it.')
    //       .toFailure();
    // } else {
    await 3.seconds.delay;
    final json = jsonDecode(FakeHomeDetailMockup.instance.getSuccessJson());
    final response = SingleApiResponse.fromJson(json, HomeDetailModel.fromJson);
    return response.data.toSuccess();
    // }
  }
}

class FakeHomeDetailMockup extends FakeMockup {
  static final FakeHomeDetailMockup instance = FakeHomeDetailMockup();
  static String dummy(int index) {
    final gender =
        Gender.values[faker.randomGenerator.integer(Gender.values.length)];
    Map<String, dynamic> data = {
      'id': index,
      'name': faker.person.name(),
      'email': 'email@gmail.com',
      'phone_number': faker.phoneNumber.us(),
      'birth_date': '1990-01-01',
      'address': faker.address.streetAddress(),
      'country': faker.address.country(),
      'gender': gender.index,
      'info': faker.lorem.sentence(),
      'photos': List.generate(
        faker.randomGenerator.integer(10),
        (index) => faker.image.image(
          keywords: Constants.kHomeKeyWords,
          random: true,
        ),
      ),
    };
    return jsonEncode(data).toString();
  }

  @override
  String getSuccessJson() => '''
    {
      "result": {
        "status": 200,
        "message_code": "success",
        "message": "Success",
        "dt": "2023-02-01 10:00:00"
      },
      "data": ${dummy(1)}
    }
    ''';
}

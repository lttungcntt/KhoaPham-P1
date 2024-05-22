import 'package:dio/dio.dart';
import 'package:result_dart/result_dart.dart';

import '../../../../core/infrastructure/datasources/remote/api/base/api_error.dart';
import '../../../home/domain/entities/home.dart';

abstract class IHomeRepository {
  Future<Result<List<IHome>, ApiError>> get({CancelToken? token});
}

import 'package:dio/dio.dart';
import 'package:result_dart/result_dart.dart';

import '../../../../core/infrastructure/datasources/remote/api/base/api_error.dart';
import '../../../home_detail/domain/entities/home_detail.dart';

abstract class IHomeDetailRepository {
 Future<Result<IHomeDetail,ApiError>> getById(int id, {CancelToken? token});
}


import 'package:dio/dio.dart';
import 'package:result_dart/result_dart.dart';

import '../../../../core/infrastructure/datasources/remote/api/base/api_error.dart';
import '../../../dashboard/domain/entities/dashboard.dart';

abstract class IDashboardRepository {
 Future<Result<IDashboard,ApiError>> getById(int id, {CancelToken? token});
}


import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:result_dart/result_dart.dart';

import '../../domain/interfaces/dashboard_interface.dart';
import '../../../../common/utils/app_environment.dart';
import '../../../../core/infrastructure/datasources/remote/api/base/api_error.dart';
import '../../../dashboard/domain/entities/dashboard.dart';
@LazySingleton(
  as: IDashboardRepository,
  env: AppEnvironment.environments,
)
class DashboardRepository implements IDashboardRepository {
  @override
  Future<Result<IDashboard,ApiError>> getById(int id, {CancelToken? token}) async {
    throw UnimplementedError();
  }
}
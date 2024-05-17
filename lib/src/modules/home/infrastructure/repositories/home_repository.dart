import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:result_dart/result_dart.dart';

import '../../domain/interfaces/home_interface.dart';
import '../../../../common/utils/app_environment.dart';
import '../../../../core/infrastructure/datasources/remote/api/base/api_error.dart';
import '../../../home/domain/entities/home.dart';
@LazySingleton(
  as: IHomeRepository,
  env: AppEnvironment.environments,
)
class HomeRepository implements IHomeRepository {
  @override
  Future<Result<IHome,ApiError>> getById(int id, {CancelToken? token}) async {
    // TODO: implement getById
    throw UnimplementedError();
  }
}
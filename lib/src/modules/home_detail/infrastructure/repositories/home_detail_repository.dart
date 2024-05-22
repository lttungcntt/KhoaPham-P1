import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:result_dart/result_dart.dart';

import '../../domain/interfaces/home_detail_interface.dart';
import '../../../../common/utils/app_environment.dart';
import '../../../../core/infrastructure/datasources/remote/api/base/api_error.dart';
import '../../../home_detail/domain/entities/home_detail.dart';
@LazySingleton(
  as: IHomeDetailRepository,
  env: AppEnvironment.environments,
)
class HomeDetailRepository implements IHomeDetailRepository {
  @override
  Future<Result<IHomeDetail,ApiError>> getById(int id, {CancelToken? token}) async {
    // TODO: implement getById
    throw UnimplementedError();
  }
}
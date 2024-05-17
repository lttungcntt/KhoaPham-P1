import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:result_dart/result_dart.dart';

import '../../domain/interfaces/home_interface.dart';
import '../../../../common/utils/app_environment.dart';
import '../../../../core/infrastructure/datasources/remote/api/base/api_error.dart';
import '../../../home/domain/entities/home.dart';
import '../../../home/infrastructure/models/home_model.dart';

@alpha
@LazySingleton(as: IHomeRepository)
class HomeMockupRepository implements IHomeRepository {
  @override
  Future<Result<IHome,ApiError>> getById(int id, {CancelToken? token}) async {
    return Result.success(const HomeModel());
  }
}
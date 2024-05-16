import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:result_dart/result_dart.dart';

import '../../domain/interfaces/dashboard_interface.dart';
import '../../../../common/utils/app_environment.dart';
import '../../../../core/infrastructure/datasources/remote/api/base/api_error.dart';
import '../../../dashboard/domain/entities/dashboard.dart';
import '../../../dashboard/infrastructure/models/dashboard_model.dart';

@alpha
@LazySingleton(as: IDashboardRepository)
class DashboardMockupRepository implements IDashboardRepository {
  @override
  Future<Result<IDashboard, ApiError>> getById(int id,
      {CancelToken? token}) async {
    return const Result.success(DashboardModel());
  }
}

class DashboardFake {
  String data = '''
  [
  {
    "id": 1,
    "name": "home",
    "icon": ""
  },
  {
    "id": 2,
    "name": "faq",
    "icon": ""
  },
  {
    "id": 3,
    "name": "about",
    "icon": ""
  },
  {
    "id": 4,
    "name": "setting",
    "icon": ""
  }
]
  ''';
}

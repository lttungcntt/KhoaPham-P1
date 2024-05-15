// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i8;
import 'package:flutter_base/src/common/theme/text_theme/default_text_theme.dart'
    as _i4;
import 'package:flutter_base/src/common/utils/logger.dart' as _i14;
import 'package:flutter_base/src/core/application/cubits/auth/auth_cubit.dart'
    as _i13;
import 'package:flutter_base/src/core/application/cubits/lang/lang_cubit.dart'
    as _i9;
import 'package:flutter_base/src/core/domain/interfaces/lang_repository_interface.dart'
    as _i6;
import 'package:flutter_base/src/core/infrastructure/datasources/remote/api/api_client.dart'
    as _i15;
import 'package:flutter_base/src/core/infrastructure/datasources/remote/api/services/auth/auth_client.dart'
    as _i10;
import 'package:flutter_base/src/core/infrastructure/repositories/lang_repository.dart'
    as _i7;
import 'package:flutter_base/src/modules/app/app_router.dart' as _i5;
import 'package:flutter_base/src/modules/auth/domain/interfaces/auth_repository_interface.dart'
    as _i11;
import 'package:flutter_base/src/modules/auth/infrastructure/repositories/auth_repository.dart'
    as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:talker_flutter/talker_flutter.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final loggerModule = _$LoggerModule();
    final apiModule = _$ApiModule();
    gh.singleton<_i3.Talker>(() => loggerModule.talker());
    gh.singleton<_i4.DefaultTextTheme>(() => _i4.DefaultTextTheme());
    gh.singleton<_i5.AppRouter>(() => _i5.AppRouter());
    gh.factory<String>(
      () => apiModule.baseUrl,
      instanceName: 'baseUrl',
    );
    gh.lazySingleton<_i6.ILangRepository>(() => _i7.LangRepository());
    gh.singleton<_i8.Dio>(() => apiModule.dio(
          gh<String>(instanceName: 'baseUrl'),
          gh<_i6.ILangRepository>(),
          gh<_i3.Talker>(),
        ));
    gh.singleton<_i9.LangCubit>(() => _i9.LangCubit(gh<_i6.ILangRepository>()));
    gh.factory<_i10.AuthClient>(() => _i10.AuthClient(gh<_i8.Dio>()));
    gh.lazySingleton<_i11.IAuthRepository>(
        () => _i12.AuthRepository(gh<_i10.AuthClient>()));
    gh.singleton<_i13.AuthCubit>(
        () => _i13.AuthCubit(gh<_i11.IAuthRepository>()));
    return this;
  }
}

class _$LoggerModule extends _i14.LoggerModule {}

class _$ApiModule extends _i15.ApiModule {}

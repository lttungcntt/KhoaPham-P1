// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i17;
import 'package:flutter_base/src/common/theme/color_theme/default_dart_color_theme.dart'
    as _i5;
import 'package:flutter_base/src/common/theme/color_theme/default_light_color_theme.dart'
    as _i6;
import 'package:flutter_base/src/common/theme/text_theme/default_text_theme.dart'
    as _i4;
import 'package:flutter_base/src/common/utils/logger.dart' as _i31;
import 'package:flutter_base/src/core/application/cubits/auth/auth_cubit.dart'
    as _i30;
import 'package:flutter_base/src/core/application/cubits/lang/lang_cubit.dart'
    as _i25;
import 'package:flutter_base/src/core/application/cubits/lang/theme_cubit.dart'
    as _i24;
import 'package:flutter_base/src/core/domain/interfaces/lang_repository_interface.dart'
    as _i15;
import 'package:flutter_base/src/core/domain/interfaces/theme_repository_interface.dart'
    as _i19;
import 'package:flutter_base/src/core/infrastructure/datasources/remote/api/api_client.dart'
    as _i32;
import 'package:flutter_base/src/core/infrastructure/datasources/remote/api/services/auth/auth_client.dart'
    as _i27;
import 'package:flutter_base/src/core/infrastructure/repositories/lang_repository.dart'
    as _i16;
import 'package:flutter_base/src/core/infrastructure/repositories/theme_repository.dart'
    as _i20;
import 'package:flutter_base/src/modules/app/app_router.dart' as _i7;
import 'package:flutter_base/src/modules/auth/domain/interfaces/auth_repository_interface.dart'
    as _i28;
import 'package:flutter_base/src/modules/auth/infrastructure/repositories/auth_repository.dart'
    as _i29;
import 'package:flutter_base/src/modules/dashboard/application/cubit/dashboard_cubit.dart'
    as _i18;
import 'package:flutter_base/src/modules/dashboard/domain/interfaces/dashboard_interface.dart'
    as _i8;
import 'package:flutter_base/src/modules/dashboard/infrastructure/repositories/dashboard_mockup_repository.dart'
    as _i9;
import 'package:flutter_base/src/modules/dashboard/infrastructure/repositories/dashboard_repository.dart'
    as _i21;
import 'package:flutter_base/src/modules/home/application/cubit/home_cubit.dart'
    as _i26;
import 'package:flutter_base/src/modules/home/domain/interfaces/home_interface.dart'
    as _i12;
import 'package:flutter_base/src/modules/home/infrastructure/repositories/home_mockup_repository.dart'
    as _i13;
import 'package:flutter_base/src/modules/home/infrastructure/repositories/home_repository.dart'
    as _i22;
import 'package:flutter_base/src/modules/home_detail/application/cubit/home_detail_cubit.dart'
    as _i14;
import 'package:flutter_base/src/modules/home_detail/domain/interfaces/home_detail_interface.dart'
    as _i10;
import 'package:flutter_base/src/modules/home_detail/infrastructure/repositories/home_detail_mockup_repository.dart'
    as _i11;
import 'package:flutter_base/src/modules/home_detail/infrastructure/repositories/home_detail_repository.dart'
    as _i23;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:talker_flutter/talker_flutter.dart' as _i3;

const String _ALPHA = 'ALPHA';
const String _DEV = 'DEV';
const String _PRG = 'PRG';
const String _UAT = 'UAT';
const String _PRD = 'PRD';

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
    gh.singleton<_i5.DefaultDarkColorTheme>(() => _i5.DefaultDarkColorTheme());
    gh.singleton<_i6.DefaultLightColorTheme>(
        () => _i6.DefaultLightColorTheme());
    gh.singleton<_i7.AppRouter>(() => _i7.AppRouter());
    gh.lazySingleton<_i8.IDashboardRepository>(
      () => _i9.DashboardMockupRepository(),
      registerFor: {_ALPHA},
    );
    gh.lazySingleton<_i10.IHomeDetailRepository>(
      () => _i11.HomeDetailMockupRepository(),
      registerFor: {_ALPHA},
    );
    gh.lazySingleton<_i12.IHomeRepository>(
      () => _i13.HomeMockupRepository(),
      registerFor: {_ALPHA},
    );
    gh.factory<_i14.HomeDetailCubit>(
        () => _i14.HomeDetailCubit(gh<_i10.IHomeDetailRepository>()));
    gh.factory<String>(
      () => apiModule.baseUrl,
      instanceName: 'baseUrl',
    );
    gh.lazySingleton<_i15.ILangRepository>(() => _i16.LangRepository());
    gh.singleton<_i17.Dio>(() => apiModule.dio(
          gh<String>(instanceName: 'baseUrl'),
          gh<_i15.ILangRepository>(),
          gh<_i3.Talker>(),
        ));
    gh.singleton<_i18.DashboardCubit>(
        () => _i18.DashboardCubit(gh<_i8.IDashboardRepository>()));
    gh.lazySingleton<_i19.IThemeRepository>(() => _i20.ThemeRepository());
    gh.lazySingleton<_i8.IDashboardRepository>(
      () => _i21.DashboardRepository(),
      registerFor: {
        _DEV,
        _PRG,
        _UAT,
        _PRD,
      },
    );
    gh.lazySingleton<_i12.IHomeRepository>(
      () => _i22.HomeRepository(),
      registerFor: {
        _DEV,
        _PRG,
        _UAT,
        _PRD,
      },
    );
    gh.lazySingleton<_i10.IHomeDetailRepository>(
      () => _i23.HomeDetailRepository(),
      registerFor: {
        _DEV,
        _PRG,
        _UAT,
        _PRD,
      },
    );
    gh.singleton<_i24.ThemeCubit>(
        () => _i24.ThemeCubit(gh<_i19.IThemeRepository>()));
    gh.singleton<_i25.LangCubit>(
        () => _i25.LangCubit(gh<_i15.ILangRepository>()));
    gh.factory<_i26.HomeCubit>(
        () => _i26.HomeCubit(gh<_i12.IHomeRepository>()));
    gh.factory<_i27.AuthClient>(() => _i27.AuthClient(gh<_i17.Dio>()));
    gh.lazySingleton<_i28.IAuthRepository>(
        () => _i29.AuthRepository(gh<_i27.AuthClient>()));
    gh.singleton<_i30.AuthCubit>(
        () => _i30.AuthCubit(gh<_i28.IAuthRepository>()));
    return this;
  }
}

class _$LoggerModule extends _i31.LoggerModule {}

class _$ApiModule extends _i32.ApiModule {}

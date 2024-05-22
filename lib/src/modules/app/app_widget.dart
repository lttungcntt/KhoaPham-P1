import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:talker_flutter/talker_flutter.dart';

import '../../../generated/colors.gen.dart';
import '../../../generated/l10n.dart';
import '../../common/theme/app_theme.dart';
import '../../common/theme/app_theme_wrapper.dart';
import '../../common/utils/getit_utils.dart';
import '../../core/application/cubits/lang/lang_cubit.dart';
import '../../core/application/cubits/lang/theme_cubit.dart';
import '../../core/infrastructure/datasources/local/storage.dart';
import 'app_router.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final router = getIt<AppRouter>();
    final talker = getIt<Talker>();

    final lightTheme = ThemeData(
      colorScheme: Theme.of(context).colorScheme.copyWith(
            primary: ColorName.primary,
            surface: ColorName.primary,
            secondary: ColorName.secondary,
            primaryContainer: ColorName.white,
            tertiary: ColorName.black,
          ),
    );

    final darkTheme = ThemeData(
        colorScheme: Theme.of(context).colorScheme.copyWith(
              primary: ColorName.primary,
              surface: ColorName.black,
              secondary: ColorName.secondary,
              primaryContainer: ColorName.black,
              tertiary: ColorName.white,
            ));

    return BlocBuilder<ThemeCubit, ThemeMode>(
      builder: (context, themeMode) {
        return ScreenUtilInit(
          designSize: const Size(390, 844),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) => BlocBuilder<LangCubit, Locale>(
            builder: (context, locale) {
              return AppThemeWrapper(
                  appTheme: AppTheme.create(locale),
                  builder: (BuildContext context, ThemeData themeData) {
                    return MaterialApp.router(
                      localizationsDelegates: const [
                        S.delegate,
                        GlobalMaterialLocalizations.delegate,
                        GlobalWidgetsLocalizations.delegate,
                        GlobalCupertinoLocalizations.delegate,
                      ],
                      supportedLocales: S.delegate.supportedLocales,
                      locale: locale,
                      theme: lightTheme,
                      darkTheme: darkTheme,
                      themeMode: Storage.themeMode,
                      routerConfig: router.config(
                        navigatorObservers: () => [TalkerRouteObserver(talker)],
                      ),
                    );
                  });
            },
          ),
        );
      },
    );
  }
}

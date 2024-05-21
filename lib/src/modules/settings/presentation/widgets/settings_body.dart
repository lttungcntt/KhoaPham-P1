import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../../../common/extensions/build_context_x.dart';
import '../../../../common/extensions/locale_x.dart';
import '../../../../core/application/cubits/lang/lang_cubit.dart';
import '../../../../core/application/cubits/lang/theme_cubit.dart';
import '../../../app/app_router.dart';
class SettingsBody extends StatelessWidget {
  const SettingsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.color.primaryContainer,
      child: ListView(
        children: [
          _buildLanguageDropdown(context),
          _buildThemeModeDropdown(context),
          _buildVersionInfo(context),
        ],
      ),
    );
  }

  Widget _buildLanguageDropdown(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          Text(
            context.s.common_language,
            style: context.textTheme.titleMedium
                .copyWith(color: context.color.tertiary),
          ),
          const Spacer(),
          BlocBuilder<LangCubit, Locale>(
            builder: (context, state) {
              return DropdownButton<Locale>(
                  dropdownColor: context.color.primaryContainer,
                  value: state,
                  items: LocaleX.supportedLocales
                      .map((locale) => DropdownMenuItem(
                            value: locale,
                            child: Text(
                              locale.languageName,
                              style: context.textTheme.titleMedium
                                  .copyWith(
                                      color: context.color.tertiary),
                            ),
                          ))
                      .toList(),
                  onChanged: (value) {
                    if (value == null) return;
                    final langCubit = context.read<LangCubit>();
                    langCubit.setLocale(value);
                    context.router.replaceAll([SplashRoute()]);
                  });
            },
          ),
        ],
      ),
    );
  }

  Widget _buildThemeModeDropdown(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          Text(
            'Theme Mode',
            style: context.textTheme.titleMedium
                .copyWith(color: context.color.tertiary),
          ),
          const Spacer(),
          BlocBuilder<ThemeCubit, ThemeMode>(
            builder: (context, state) {
              return DropdownButton<ThemeMode>(
                  dropdownColor: context.color.primaryContainer,
                  value: state,
                  items: ThemeMode.values
                      .map((themeMode) => DropdownMenuItem(
                            value: themeMode,
                            child: Text(
                              themeMode
                                  .toString()
                                  .split('.')
                                  .last
                                  .toUpperCase(),
                              style: context.textTheme.titleMedium
                                  .copyWith(
                                      color: context.color.tertiary),
                            ),
                          ))
                      .toList(),
                  onChanged: (value) {
                    if (value == null) return;
                    final themeCubit = context.read<ThemeCubit>();
                    themeCubit.setTheme(value);
                    // context.router.replaceAll([SplashRoute()]);
                  });
            },
          )
        ],
      ),
    );
  }

  Widget _buildVersionInfo(BuildContext context) {
    return ListTile(
      title: FutureBuilder<PackageInfo>(
          future: PackageInfo.fromPlatform(),
          builder: (context, snapshot) {
            final version = snapshot.data?.version;
            final buildNumber = snapshot.data?.buildNumber;

            if (version != null && buildNumber != null) {
              return Text(
                  context.s.common_version('$version($buildNumber)'),
                  style: context.textTheme.titleSmall
                      .copyWith(color: context.color.tertiary));
            }
            return const SizedBox();
          }),
    );
  }
}

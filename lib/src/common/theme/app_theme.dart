import 'package:flutter/material.dart';

import '../../../generated/colors.gen.dart';
import 'color_theme/color_theme_interfaces.dart';
import 'color_theme/color_theme_provider.dart';
import 'text_theme/text_theme_interfaces.dart';
import 'text_theme/text_theme_provider.dart';

class AppTheme {
  final TextThemeFactory factory;
  final ColorThemeFactory colorFactory;

  AppTheme._(this.factory, this.colorFactory);

  factory AppTheme.create(
    BuildContext context,
    Locale locale,
    ThemeMode mode, {
    Map<Locale, TextThemeFactory> mapper = const {},
    Map<ThemeMode, ColorThemeFactory> colorMapper = const {},
    AppThemeFilters? filter,
  }) {
    final provider = TextThemeFactoryProvider.of(mapper: mapper);
    final factory = provider.find(locale, filter: filter);

    final colorProvider = ColorThemeFactoryProvider.of(mapper: colorMapper);
    final colorFactory = colorProvider.find(mode);
    return AppTheme._(factory, colorFactory);
  }

  ThemeData build() {
    return ThemeData(
      primarySwatch: ColorName.materialPrimary,
      textTheme: factory.create(),
    );
  }
}

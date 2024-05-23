import 'package:flutter/material.dart';

import 'color_theme_interfaces.dart';
import 'default_dart_color_theme.dart';
import 'default_light_color_theme.dart';

typedef AppColorThemeFilters = ColorThemeFactory? Function(
    Map<ThemeMode, ColorThemeFactory>);

class ColorThemeFactoryProvider {
  final Map<ThemeMode, ColorThemeFactory> mapper;

  ColorThemeFactoryProvider._(this.mapper);

  factory ColorThemeFactoryProvider.of({
    required Map<ThemeMode, ColorThemeFactory> mapper,
  }) =>
      ColorThemeFactoryProvider._(mapper);

  ColorThemeFactory find(
    ThemeMode mode, {
    AppColorThemeFilters? filter,
  }) {
    final filtering = filter ?? (mapper) => mapper[mode];
    return filtering(mapper) ??
        (mode == ThemeMode.light
            ? DefaultLightColorTheme()
            : DefaultDarkColorTheme());
  }
}

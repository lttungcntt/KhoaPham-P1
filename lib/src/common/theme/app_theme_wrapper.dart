import 'package:flutter/material.dart';

import 'app_theme.dart';
import 'color_theme/color_theme_interfaces.dart';
import 'text_theme/text_theme_interfaces.dart';

typedef AppThemeBuilder = Widget Function(BuildContext c, ThemeData data);

class AppThemeWrapper extends StatelessWidget {
  const AppThemeWrapper({
    super.key,
    required this.builder,
    required this.appTheme,
  });

  final AppThemeBuilder builder;
  final AppTheme appTheme;

  @override
  Widget build(BuildContext context) {
    final themeData = appTheme.build();
    return AppThemeInheritWidget(
      factory: appTheme.factory,
      colorFactory: appTheme.colorFactory,
      child: builder(context, themeData),
    );
  }
}

class AppThemeInheritWidget extends InheritedWidget {
  const AppThemeInheritWidget({
    super.key,
    required super.child,
    required this.factory,
    required this.colorFactory,
  });

  final TextThemeFactory factory;
  final ColorThemeFactory colorFactory;

  @override
  bool updateShouldNotify(covariant AppThemeInheritWidget oldWidget) {
    return factory != oldWidget.factory;
  }

  static AppThemeInheritWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppThemeInheritWidget>()!;
  }
}
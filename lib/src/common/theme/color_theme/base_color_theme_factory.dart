import 'package:flutter/material.dart';

import '../../../../generated/colors.gen.dart';
import 'color_theme_interfaces.dart';

abstract class LightColorThemeFactory implements ColorThemeFactory {
  @override
  Color get primary => ColorName.primary;
  @override
  Color get secondary => ColorName.secondary;
  @override
  Color get primaryContainer => ColorName.white;
  @override
  Color get secondaryContainer => ColorName.secondary;
  @override
  Color get primaryText => ColorName.black;
  @override
  Color get secondaryText => ColorName.black.withOpacity(0.8);
  @override
  Color get backgroundAppBar => ColorName.primary;
  @override
  Color get titleAppBar => ColorName.white;
}

abstract class DarkColorThemeFactory implements ColorThemeFactory {
  @override
  Color get primary => ColorName.primary;
  @override
  Color get secondary => ColorName.secondary;
  @override
  Color get primaryContainer => ColorName.black;
  @override
  Color get secondaryContainer => ColorName.secondary;
  @override
  Color get primaryText => ColorName.white;
  @override
  Color get secondaryText => ColorName.white.withOpacity(0.8);
  @override
  Color get backgroundAppBar => ColorName.black;
  @override
  Color get titleAppBar => ColorName.white;
}

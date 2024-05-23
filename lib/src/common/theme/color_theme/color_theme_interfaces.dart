import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

abstract class ColorThemeFactory {
  Color get primary;
  Color get secondary;
  Color get primaryContainer; // primaryContainer is the same as primary
  Color get secondaryContainer; // secondaryContainer is the same as secondary
  Color get primaryText; // primaryText is the same as tertiary
  Color get secondaryText; // secondaryText is the same as onSecondary
  Color get backgroundAppBar; // background is the same as surface
  Color get titleAppBar; // t
}

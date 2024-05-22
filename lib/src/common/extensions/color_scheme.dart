import 'package:flutter/material.dart';

import '../../../generated/colors.gen.dart';

extension ColorSchemeX on ColorScheme {
  Color get primaryContainer => primary; // primaryContainer is the same as primary
  Color get secondaryContainer => secondary; // secondaryContainer is the same as secondary
  Color get primaryText => tertiary; // primaryText is the same as tertiary
  Color get secondaryText => onSecondary; // secondaryText is the same as onSecondary
  Color get backgroundAppBar => surface; // background is the same as surface
  Color get titleAppBar => ColorName.white; // titleAppBar alway is white
}

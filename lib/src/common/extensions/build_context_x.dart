import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../theme/app_theme_wrapper.dart';
import '../theme/color_theme/color_theme_interfaces.dart';
import '../theme/text_theme/text_theme_interfaces.dart';

extension BuildContextX on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  TextThemeFactory get textTheme => AppThemeInheritWidget.of(this).factory;
  ColorThemeFactory get colorTheme => AppThemeInheritWidget.of(this).colorFactory;

  bool get hasVirtualHome => mediaQuery.padding.bottom > 0;
  S get s => S.of(this);
}

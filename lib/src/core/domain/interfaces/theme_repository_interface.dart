import 'package:flutter/material.dart';

abstract class IThemeRepository {
  ThemeMode getCurrentTheme();
  Future setTheme(ThemeMode mode);
}

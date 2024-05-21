import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../domain/interfaces/theme_repository_interface.dart';
import '../datasources/local/storage.dart';

@LazySingleton(as: IThemeRepository)
class ThemeRepository implements IThemeRepository {
  @override
  ThemeMode getCurrentTheme() => Storage.themeMode;

  @override
  Future setTheme(ThemeMode mode) async => await Storage.setThemeMode(mode.index);
}

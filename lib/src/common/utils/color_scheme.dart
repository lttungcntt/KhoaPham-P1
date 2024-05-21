import 'package:flutter/material.dart';

class CustomColorScheme extends ColorScheme {
  final ColorScheme colorScheme;
  final Color titleText;
  final Color subTitleText;

  CustomColorScheme({
    required this.colorScheme,
    required this.titleText,
    required this.subTitleText,
  }) : super(
          brightness: colorScheme.brightness,
          primary: colorScheme.primary,
          secondary:
              colorScheme.secondary, // Add the missing argument for 'secondary'
          onPrimary: colorScheme.onPrimary,
          onSecondary: colorScheme
              .onSecondary, // Add the missing argument for 'onSecondary'
          error: colorScheme.error, // Add the missing argument for 'error'
          onError:
              colorScheme.onError, // Add the missing argument for 'onError'
          background: colorScheme
              .background, // Add the missing argument for 'background'
          onBackground: colorScheme
              .onBackground, // Add the missing argument for 'onBackground'
          surface:
              colorScheme.surface, // Add the missing argument for 'surface'
          onSurface:
              colorScheme.onSurface, // Add the missing argument for 'onSurface'
        );
   
}

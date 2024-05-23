import 'package:flutter/material.dart';

import '../extensions/build_context_x.dart';

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer({
    super.key,
    required this.child,
    this.backgroundColor,
    this.height,
    this.width,
  });

  final Widget child;
  final Color? backgroundColor;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor ?? context.colorTheme.primaryContainer,
      height: height,
      width: width,
      child: child,
    );
  }
}

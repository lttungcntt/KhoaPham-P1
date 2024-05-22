import 'package:flutter/material.dart';

import '../extensions/build_context_x.dart';

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer({
    super.key,
    required this.child,
    this.backgroundColor,
  });

  final Widget child;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor ?? context.color.primaryContainer,
      child: child,
    );
  }
}

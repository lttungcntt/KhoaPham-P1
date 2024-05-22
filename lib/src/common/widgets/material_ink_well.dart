import 'package:flutter/material.dart';

import '../extensions/build_context_x.dart';

class MaterialInkWell extends StatelessWidget {
  const MaterialInkWell({
    super.key,
    required this.onTap,
    required this.child,
  });

  final void Function()? onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onTap,
              splashColor: context.color.primary.withOpacity(0.5),
              highlightColor: context.color.primary.withOpacity(0.5),
              focusColor: context.color.primary.withOpacity(0.5),
            ),
          ),
        )
      ],
    );
  }
}

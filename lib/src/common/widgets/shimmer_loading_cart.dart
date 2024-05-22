import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../extensions/build_context_x.dart';
import '../extensions/color_scheme.dart';

class ShimmerLoadingCard extends StatelessWidget {
  const ShimmerLoadingCard({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey,
      highlightColor: context.color.primaryText,
      direction: ShimmerDirection.ltr,
      period: const Duration(milliseconds: 900),
      child: child,
    );
  }
}

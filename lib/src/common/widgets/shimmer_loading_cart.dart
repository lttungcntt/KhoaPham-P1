import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../extensions/build_context_x.dart';

class ShimmerLoadingCard extends StatelessWidget {
  const ShimmerLoadingCard({
    super.key,
    required this.child,
    this.isLoading = true,
  });

  final Widget child;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Shimmer.fromColors(
            baseColor: Colors.grey,
            highlightColor: context.colorTheme.primaryText,
            direction: ShimmerDirection.ltr,
            period: const Duration(milliseconds: 900),
            enabled: isLoading,
            child: child,
          )
        : child;
  }
}

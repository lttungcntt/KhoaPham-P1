import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../extensions/build_context_x.dart';
import 'background_container.dart';

class LoadingTextEmpty extends StatelessWidget {
  const LoadingTextEmpty({
    super.key,
    required this.textStyle,
    this.sizeWidth,
  });

  final TextStyle textStyle;
  final double? sizeWidth;

  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
        backgroundColor: textStyle.color,
        child: SizedBox.fromSize(
          size: Size(sizeWidth ?? context.mediaQuery.size.width,
              textStyle.height ?? 30.h),
        ));
  }
}

import 'package:flutter/material.dart';

import '../extensions/build_context_x.dart';
import '../extensions/color_scheme.dart';

class CommonAppBar extends AppBar {
  CommonAppBar({
    super.key,
    super.leading,
    super.actions,
    required BuildContext context,
    required String title,
  }) : super(
          title: Text(title,
              style: context.textTheme.titleLarge
                  .copyWith(color: context.color.titleAppBar)),
          backgroundColor: context.color.backgroundAppBar.withOpacity(0.9),
          centerTitle: false,
        );
}

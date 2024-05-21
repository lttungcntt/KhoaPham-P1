import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/extensions/build_context_x.dart';
import 'home_card.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.color.primaryContainer,
      child: ListView.separated(
        itemCount: 10,
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        padding: EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: context.mediaQuery.padding.bottom + 32,
                top: context.mediaQuery.padding.top)
            .w,
        itemBuilder: (context, index) {
          return const HomeCard();
        },
      ),
    );
  }
}

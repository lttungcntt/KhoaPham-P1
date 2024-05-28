import 'package:auto_route/auto_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

import '../../../../common/extensions/build_context_x.dart';
import '../../../../common/utils/image_utils.dart';
import '../../../../common/widgets/loading_text_empty.dart';
import '../../../../common/widgets/material_ink_well.dart';
import '../../../app/app_router.dart';
import '../../domain/entities/home.dart';

final faker = Faker();

class HomeCard extends StatelessWidget {
  const HomeCard({
    super.key,
    this.home,
  });

  final IHome? home;

  @override
  Widget build(BuildContext context) {
    return MaterialInkWell(
      onTap: () {
        if (home == null) return;
        context.router.push(HomeDetailRoute(data: home!));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ImageUtils.loadCircleAvatar(
            strokeWidth: 2.w,
            fit: BoxFit.fill,
            home?.image ?? '',
            radius: 50.w,
          ), // Load image (Replace with your image path
          16.horizontalSpace, // Add spacing between the image and text
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                8.verticalSpace,
                _buildText(
                    home?.name,
                    context.textTheme.titleLarge
                        .copyWith(color: context.colorTheme.primaryText)),
                4.verticalSpace, // Spacing between text widgets
                _buildText(
                    home?.info,
                    context.textTheme.titleSmall
                        .copyWith(color: context.colorTheme.primaryText)),
                8.verticalSpace,
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildText(String? text, TextStyle textStyle) {
    if (text == null) {
      return LoadingTextEmpty(textStyle: textStyle);
    }
    return Text(
      text,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      style: textStyle,
    );
  }
}

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/extensions/build_context_x.dart';
import '../../../../common/utils/image_utils.dart';
import '../../domain/entities/home.dart';

final faker = Faker();

class HomeCard extends StatelessWidget {
  const HomeCard({
    super.key,
    required this.home,
  });

  final IHome home;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: context.color.tertiary.withOpacity(0.5),
      onTap: () {
        // Add your navigation logic here
      },
      child: Ink(
        color: context.color.tertiary.withOpacity(0.5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ImageUtils.loadCircleAvatar(
              strokeWidth: 2.w,
              fit: BoxFit.fill,
              home.image,
              radius: 50.w,
            ), // Load image (Replace with your image path
            const SizedBox(
                width: 10.0), // Add spacing between the image and text
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  8.verticalSpace,
                  _buildText(
                      home.name,
                      context.textTheme.titleLarge
                          .copyWith(color: context.color.tertiary)),
                  4.verticalSpace, // Spacing between text widgets
                  _buildText(
                      home.info,
                      context.textTheme.titleSmall
                          .copyWith(color: context.color.tertiary)),
                  8.verticalSpace,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildText(String text, TextStyle textStyle) {
    return Text(
      text,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      style: textStyle,
    );
  }
}

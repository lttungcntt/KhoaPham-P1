import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../generated/colors.gen.dart';
import '../../../../common/utils/image_utils.dart';

final faker = Faker();

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    final name = faker.person.name();
    return InkWell(
      // highlightColor: ColorName.primary.withOpacity(0.4),
      overlayColor: MaterialStateProperty.all(ColorName.primary.withOpacity(0.4)),
      onTap: () {
        // Add your navigation logic here
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ImageUtils.loadCircleAvatar(
            faker.image.image(
              keywords: ['hot body girl', 'name'],
              random: true,
            ),
            radius: 50.w,
          ), // Load image (Replace with your image path
          const SizedBox(
              width: 10.0), // Add spacing between the image and text
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildText(name, 20.0),
                const SizedBox(height: 10.0), // Spacing between text widgets
                _buildText(faker.lorem.sentences(5).join(' '), 14.0),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildText(String text, double fontSize) {
    return Text(
      text,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: fontSize.sp, // Adjust font size
      ),
    );
  }

  Widget _buildRow(String label, String value, double fontSize) {
    return Row(
      children: [
        Text(
          label,
          maxLines: 3,
          style: TextStyle(
            fontSize: fontSize.sp, // Adjust font size
          ),
        ),
        Text(
          value,
          maxLines: 3,
          style: TextStyle(
            fontSize: fontSize.sp, // Adjust font size
          ),
        ),
      ],
    );
  }
}

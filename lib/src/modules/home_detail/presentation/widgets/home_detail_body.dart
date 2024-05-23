import 'package:flutter/material.dart';

import '../../../../common/constants/constants.dart';
import '../../../../common/extensions/build_context_x.dart';
import '../../../../common/widgets/background_container.dart';
import '../../../../common/widgets/custom_slider.dart';
import '../../../home/presentation/widgets/home_card.dart';

class HomeDetailBody extends StatelessWidget {
  const HomeDetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
        child: SingleChildScrollView(
      child: Column(
        children: [
          CustomSlider(
            listImage: List.generate(
              10,
              (index) => faker.image
                  .image(keywords: Constants.kHomeKeyWords, random: true),
            ),
          ),
          BackgroundContainer(
            child: SizedBox(
              height: context.mediaQuery.size.height,
              width: context.mediaQuery.size.width,
            ),
          ),
        ],
      ),
    ));
  }
}

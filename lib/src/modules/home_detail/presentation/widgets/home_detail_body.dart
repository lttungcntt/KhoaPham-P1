import 'package:carousel_slider/carousel_slider.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

import '../../../../common/utils/image_utils.dart';
import '../../../../common/widgets/background_container.dart';
import '../../../../common/widgets/material_ink_well.dart';

class HomeDetailBody extends StatelessWidget {
  HomeDetailBody({super.key});

  final buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
        child: SingleChildScrollView(
      child: Column(
        children: [
          CarouselSlider.builder(
            itemCount: 10,
            itemBuilder: (context, index, realIndex) {
              return MaterialInkWell(
                onTap: () {},
                child: ImageUtils.load(faker.image.image(
                  keywords: [
                    'bikini',
                  ],
                )),
              );
            },
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: false,
              viewportFraction: 0.9,
              enlargeFactor: 0.4,
              aspectRatio: 1.5,
              initialPage: 2,
            ),
          )
        ],
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../extensions/build_context_x.dart';
import '../utils/image_utils.dart';
import '../utils/logger.dart';
import 'background_container.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({
    super.key,
    required this.listImage,
  });

  final List<String> listImage;

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  late PageController _pageController;

  int activePage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.95, initialPage: 0);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
      height: 250.h,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: widget.listImage.length,
              pageSnapping: true,
              itemBuilder: (context, pagePosition) {
                return PageView.builder(
                  itemCount: widget.listImage.length,
                  pageSnapping: true,
                  controller: _pageController,
                  itemBuilder: (context, pagePosition) {
                    return Expanded(
                      child: _sliderItem(widget.listImage, pagePosition,
                          activePage == pagePosition),
                    );
                  },
                  onPageChanged: (page) {
                    setState(() {
                      activePage = page;
                    });
                  },
                );
              },
            ),
          ),
          _indicators(context, widget.listImage.length, activePage),
        ],
      ),
    );
  }

  Widget _sliderItem(images, pagePosition, active) {
    double margin = active ? 0 : 20;
    return GestureDetector(
      onTap: () {
        logger.d('On tap image url: ${images[pagePosition]}');
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOutCubic,
        margin: EdgeInsets.all(margin),
        child: ImageUtils.load(
          images[pagePosition],
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }

  Widget _indicators(BuildContext context, imagesLength, currentIndex) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List<Widget>.generate(
        imagesLength,
        (index) {
          return Container(
            margin: const EdgeInsets.all(3),
            width: 10,
            height: 10,
            decoration: BoxDecoration(
                color: currentIndex == index
                    ? context.colorTheme.primaryText
                    : context.colorTheme.primaryText.withOpacity(0.26),
                shape: BoxShape.circle,
                border: Border.all(color: context.colorTheme.backgroundAppBar)),
          );
        },
      ),
    );
    // return );
  }
}

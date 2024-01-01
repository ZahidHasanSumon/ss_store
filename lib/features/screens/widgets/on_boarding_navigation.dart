import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ss_store/features/authentication/controllers.onboarding/onboarding_controller.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_function.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = SHelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: SDeviceUtils.getBottomNavBarHeight() + 25,
        left: TSizes.defaultSpace,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3,
          effect: ExpandingDotsEffect(
              activeDotColor: dark ? SColors.light : SColors.dark,
              dotHeight: 6),
        ));
  }
}

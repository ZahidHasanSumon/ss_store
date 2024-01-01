import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ss_store/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:ss_store/utils/constants/image_strings.dart';
import 'package:ss_store/utils/constants/text_strings.dart';

import '../widgets/onBoarding_skip.dart';
import '../widgets/on_boarding_navigation.dart';
import '../widgets/onboarding_next_page.dart';
import '../widgets/onboarding_pages.dart';


class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          //horizontal scrollable page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: SImages.onBoardingImage1,
                title: STexts.onBoardingTitle1,
                subTitle: STexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: SImages.onBoardingImage2,
                title: STexts.onBoardingTitle2,
                subTitle: STexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: SImages.onBoardingImage3,
                title: STexts.onBoardingTitle3,
                subTitle: STexts.onBoardingSubTitle3,
              ),
            ],
          ),

          ///skip button
          const OnBoardingSkip(),

          ///dot navigator
          const OnBoardingDotNavigation(),

          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}



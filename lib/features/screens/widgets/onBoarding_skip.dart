import 'package:flutter/material.dart';
import 'package:ss_store/features/authentication/controllers.onboarding/onboarding_controller.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: SDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(
        onPressed: ()  => OnBoardingController.instance.skipPage(),
        child: const Text('Skip'),
      ),
    );
  }
}
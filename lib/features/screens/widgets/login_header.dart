import 'package:flutter/material.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';


class SLoginHeader extends StatelessWidget {
  const SLoginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(dark
              ? SImages.lightSplashScreen
              : SImages.darkSplashScreen),
        ),
        Text(
          STexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,

        ),
        const SizedBox(height: TSizes.sm),
        Text(
          STexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_function.dart';
import '../containers/rounded_container.dart';
import '../products_cart/brand_card.dart';


class SBrandShowCase extends StatelessWidget {
  const SBrandShowCase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return SRoundedContainer(
      showBorder: true,
      borderColor: SColors.darkGrey,
      padding: const EdgeInsets.all(TSizes.md),
      bgColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          ///Brand with products count
          const SBrandCard(showBorder: false),
          const SizedBox(height: TSizes.spaceBtwItems),
          Row(
            children: images
                .map((image) => brandTopProductImageWidget(image, context))
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    return Expanded(
      child: SRoundedContainer(
        height: 100,
        padding: const EdgeInsets.all(TSizes.md),
        margin: const EdgeInsets.only(right: TSizes.sm),
        bgColor: SHelperFunctions.isDarkMode(context)
            ? SColors.darkerGrey
            : SColors.light,
        child: Image(
          fit: BoxFit.contain,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
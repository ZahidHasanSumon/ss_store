import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_function.dart';
import '../image_text_widget/sbrand_title_with_verification_icon.dart';
import '../images/srounded_image.dart';
import '../texts/product_title_text.dart';

class SCartItems extends StatelessWidget {
  const SCartItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SRoundedImage(
          imageUrl: SImages.product1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(TSizes.sm),
          backgroundColor: SHelperFunctions.isDarkMode(context)
              ? SColors.darkerGrey
              : SColors.light,
        ),
        const SizedBox(width: TSizes.spaceBtwItems),

        ///title, price and size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SBrandTitleWithVerificationIcon(title: 'Nike'),
              const SProductTitleText(
                  title: 'Nike Sports Shoes', maxLine: 1),

              ///attributes
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: 'Color: ',
                        style:
                        Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                        text: 'Green',
                        style:
                        Theme.of(context).textTheme.bodyLarge),
                    TextSpan(
                        text: ' | Size: ',
                        style:
                        Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                        text: 'UK08',
                        style:
                        Theme.of(context).textTheme.bodyLarge),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
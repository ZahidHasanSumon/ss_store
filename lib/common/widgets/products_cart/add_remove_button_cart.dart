import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_function.dart';
import '../images/scircular_icon.dart';


class SProductQuantityWithAddRemove extends StatelessWidget {
  const SProductQuantityWithAddRemove({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: TSizes.md,
          overlayColor: SHelperFunctions.isDarkMode(context) ? SColors.white : SColors.black,
          backgroundColor: SHelperFunctions.isDarkMode(context) ? SColors.darkerGrey : SColors.light,
        ),
        const SizedBox(width: TSizes.spaceBtwItems),
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(width: TSizes.spaceBtwItems),
        const SCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: TSizes.md,
          overlayColor: SColors.white,
          backgroundColor: SColors.primary,
        ),
      ],
    );
  }
}
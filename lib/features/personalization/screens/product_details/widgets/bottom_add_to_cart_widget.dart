import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ss_store/common/widgets/icons/scircular_wishlist_icon.dart';
import 'package:ss_store/utils/constants/colors.dart';
import 'package:ss_store/utils/constants/sizes.dart';
import 'package:ss_store/utils/helpers/helper_function.dart';
class BottomAddToCart extends StatelessWidget {
  const BottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = SHelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace, vertical: TSizes.defaultSpace / 2),
      decoration: BoxDecoration(
        color: darkMode ? SColors.darkerGrey : SColors.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(TSizes.cardRadiusLG),
          topRight: Radius.circular(TSizes.cardRadiusLG),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const SCircularWishListIcon(icon: Iconsax.minus, width: 40, height: 40, backgroundColor: SColors.darkGrey, color: SColors.white),
              const SizedBox(width: TSizes.spaceBtwItems),
              Text('2', style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(width: TSizes.spaceBtwItems),
              const SCircularWishListIcon(icon: Iconsax.add, width: 40, height: 40, backgroundColor: SColors.black, color: SColors.white),

            ],
          ),
          ElevatedButton(
              onPressed: (){},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(TSizes.md),
              backgroundColor: SColors.black,
              side: const BorderSide(color: SColors.black),
            ),
              child: const Text('Add to Cart'),),
        ],
      ),
    );
  }
}

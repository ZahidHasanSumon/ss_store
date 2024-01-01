import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ss_store/common/widgets/containers/rounded_container.dart';
import 'package:ss_store/common/widgets/image_text_widget/sbrand_title_with_verification_icon.dart';
import 'package:ss_store/common/widgets/texts/product_price_text.dart';
import 'package:ss_store/common/widgets/texts/product_title_text.dart';
import 'package:ss_store/utils/constants/image_strings.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_function.dart';
import '../../styles/shadows.dart';
import '../icons/scircular_wishlist_icon.dart';
import '../images/srounded_image.dart';

class SProductCardHorizontal extends StatelessWidget {
  const SProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);

    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [SShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark ? SColors.darkerGrey : SColors.lightContainer,
      ),
      child: Row(
        children: [
          ///thumbnail
          SRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(TSizes.sm),
            bgColor: dark ? SColors.dark : SColors.light,
            child: Stack(
              children: [
                const SizedBox(
                  height: 120,
                  width: 120,
                  child: SRoundedImage(
                      imageUrl: SImages.product1, applyImageRadius: true),
                ),

                ///sale tag
                Positioned(
                  top: 12,
                  child: SRoundedContainer(
                    radius: TSizes.sm,
                    bgColor: SColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: TSizes.sm, vertical: TSizes.xs),
                    child: Text(
                      '20%',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: Colors.black),
                    ),
                  ),
                ),

                ///favourite icon button
                const Positioned(
                  top: 0,
                  right: 0,
                  child: SCircularWishListIcon(
                    icon: Iconsax.heart5,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),

          ///details
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: TSizes.sm, left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SProductTitleText(
                        title: 'Black Nike Sport Shoe',
                        smallSize: true,
                      ),
                      SizedBox(height: TSizes.spaceBtwItems / 2),
                      SBrandTitleWithVerificationIcon(title: 'Nike'),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(child: SProductPriceText(price: '20000')),

                      ///add to cart
                      ///Add to cart button
                      Container(
                        decoration: const BoxDecoration(
                          color: SColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(TSizes.cardRadiusMd),
                            bottomRight:
                                Radius.circular(TSizes.productImageRadius),
                          ),
                        ),
                        child: const SizedBox(
                            width: TSizes.iconLg * 1.2,
                            height: TSizes.lg * 1.2,
                            child: Center(
                                child:
                                    Icon(Iconsax.add, color: SColors.white))),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

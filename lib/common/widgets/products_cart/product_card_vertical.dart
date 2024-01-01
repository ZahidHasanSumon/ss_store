import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ss_store/common/styles/shadows.dart';
import 'package:ss_store/common/widgets/containers/rounded_container.dart';
import 'package:ss_store/common/widgets/images/srounded_image.dart';
import 'package:ss_store/features/personalization/screens/product_details/product_details.dart';
import 'package:ss_store/utils/constants/colors.dart';
import 'package:ss_store/utils/constants/sizes.dart';
import 'package:ss_store/utils/helpers/helper_function.dart';
import '../../../utils/constants/image_strings.dart';
import '../icons/scircular_wishlist_icon.dart';
import '../image_text_widget/sbrand_title_with_verification_icon.dart';
import '../texts/product_price_text.dart';
import '../texts/product_title_text.dart';

class SProductCardVertical extends StatelessWidget {
  const SProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetails()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [SShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? SColors.darkerGrey : SColors.white,
        ),
        child: Column(
          children: [
            ///Thumbnail, Wishlist, Discount tag
            SRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              bgColor: dark ? SColors.dark : SColors.light,
              child: Stack(
                children: [
                  ///thumnail image
                  const SRoundedImage(
                    imageUrl: SImages.product1,
                    applyImageRadius: true,
                  ),

                  ///sale tag
                  Positioned(
                    top: 5,
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
            const SizedBox(height: TSizes.spaceBtwItems / 2),

            ///Details
            const Padding(
              padding: EdgeInsets.only(right: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SProductTitleText(
                    title: 'Nike Wild Horse',
                    smallSize: true,
                  ),
                  SizedBox(height: TSizes.spaceBtwItems / 2),
                  SBrandTitleWithVerificationIcon(title: 'Nike'),
                ],
              ),
            ),
            const Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///price
                const Padding(
                  padding: EdgeInsets.only(left: TSizes.sm),
                  child: SProductPriceText(
                    price: '2000.00',
                  ),
                ),

                ///Add to cart button
                Container(
                  decoration: const BoxDecoration(
                    color: SColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(TSizes.cardRadiusMd),
                      bottomRight: Radius.circular(TSizes.productImageRadius),
                    ),
                  ),
                  child: const SizedBox(
                      width: TSizes.iconLg * 1.2,
                      height: TSizes.lg * 1.2,
                      child: Center(
                          child: Icon(Iconsax.add, color: SColors.white))),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

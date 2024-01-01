import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/curved_edges/curved_edges_widget.dart';
import '../../../../../common/widgets/icons/scircular_wishlist_icon.dart';
import '../../../../../common/widgets/images/srounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_function.dart';

class SProductImageSlider extends StatelessWidget {
  const SProductImageSlider({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final darkMode = SHelperFunctions.isDarkMode(context);
    return SCurvedEdgesWidget(
      child: Container(
        color: darkMode ? SColors.darkerGrey : SColors.light,
        child: Stack(
          children: [
            ///main large image
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(TSizes.productImageRadius * 2),
                child: Center(
                    child: Image(image: AssetImage(SImages.product1))),
              ),
            ),

            ///image slider
            Positioned(
              right: 0,
              bottom: 30,
              left: TSizes.defaultSpace / 2,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  separatorBuilder: (_, __) =>
                  const SizedBox(width: TSizes.spaceBtwItems),
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (_, index) => SRoundedImage(
                    width: 80,
                    imageUrl: SImages.product1,
                    backgroundColor:
                    darkMode ? SColors.dark : SColors.white,
                    border: Border.all(color: SColors.primary),
                    padding: const EdgeInsets.all(TSizes.sm),
                  ),
                ),
              ),
            ),
            ///appbar icon
            const SAppBar(
              showBackArrow: true,
              action: [
                SCircularWishListIcon(icon: Iconsax.heart5, color: Colors.red,),
              ],

            ),

          ],
        ),
      ),
    );
  }
}
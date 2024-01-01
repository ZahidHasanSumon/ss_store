import 'package:flutter/material.dart';
import 'package:ss_store/common/widgets/brands/brand_showcase.dart';
import 'package:ss_store/common/widgets/layout/grid_layout.dart';
import 'package:ss_store/common/widgets/products_cart/product_card_vertical.dart';
import 'package:ss_store/common/widgets/texts_widgets/section_heading.dart';
import 'package:ss_store/utils/constants/sizes.dart';

import '../../../utils/constants/image_strings.dart';

class SCategoryTab extends StatelessWidget {
  const SCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            ///brands images
            const SBrandShowCase(
              images: [
                SImages.product18,
                SImages.product15,
                SImages.product20
              ],
      
            ),

            const SBrandShowCase(
              images: [
                SImages.product18,
                SImages.product15,
                SImages.product20
              ],

            ),
            ///products
            SSectionHeading(title: 'You might like', onPressed: (){}),
            const SizedBox(height: TSizes.spaceBtwItems),
            
            SGridLayout(itemCount: 4, itemBuilder: (_, index) => const SProductCardVertical())
          ],
        ),
      
      
      
      ),
  ],
    );
  }
}

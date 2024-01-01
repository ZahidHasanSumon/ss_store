import 'package:flutter/material.dart';
import 'package:ss_store/common/widgets/appbar/appbar.dart';
import 'package:ss_store/common/widgets/images/srounded_image.dart';
import 'package:ss_store/common/widgets/texts_widgets/section_heading.dart';
import 'package:ss_store/utils/constants/image_strings.dart';
import 'package:ss_store/utils/constants/sizes.dart';

import '../../../common/widgets/products_cart/product_card_horizontal.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SAppBar(
        title: Text('Sports'),
        showBackArrow: true,

      ),
      
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            const SRoundedImage(width: double.infinity, imageUrl: SImages.banner4, applyImageRadius: true),
            const SizedBox(height: TSizes.spaceBtwSections),

            ///sub-categories
            Column(
              children: [
                ///heading
                SSectionHeading(title:'Sport Shoes', onPressed: (){}),
                const SizedBox(height: TSizes.spaceBtwItems / 2),

                SizedBox(
                  height: 120,
                  child: ListView.separated(
                    shrinkWrap: true,
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) => const SizedBox(width: TSizes.spaceBtwItems),


                      itemBuilder: (context, index) => const SProductCardHorizontal()),
                ),

              ],

            ),
          ],
        ),

        ),
      ),

    );
  }
}

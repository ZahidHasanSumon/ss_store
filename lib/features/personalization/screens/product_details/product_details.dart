import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:ss_store/common/widgets/texts_widgets/section_heading.dart';
import 'package:ss_store/features/personalization/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:ss_store/features/personalization/screens/product_details/widgets/product_attributes.dart';
import 'package:ss_store/features/personalization/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:ss_store/features/personalization/screens/product_details/widgets/product_meta_data.dart';
import 'package:ss_store/features/personalization/screens/product_details/widgets/rating_share_widget.dart';
import 'package:ss_store/features/screens/product_reviews/product_reviews.dart';

import '../../../../utils/constants/sizes.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///product image slider
            const SProductImageSlider(),
            Padding(
              padding: const EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  ///rating and share button
                  const SRatingAndShare(),

                  ///price, title, stock, brand
                  const SProductMetaData(),

                  ///attributes
                  const SProductAttributes(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  ///checkout button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Checkout'),
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  ///description
                  const SSectionHeading(title: 'Description', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const ReadMoreText(
                    'Cause dried no solid no an small so still widen. Ten weather evident smiling bed against she examine its. Rendered far opinions two yet moderate sex striking. Sufficient motionless compliment by stimulated assistance at. Convinced resolving extensive agreeable in it on as remainder. Cordially say affection met who propriety him. Are man she towards private weather pleased. In more part he lose need so want rank no. At bringing or he sensible pleasure. Prevent he parlors do waiting be females an message society.',
                    trimLines: 3,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Read more',
                    trimExpandedText: 'Show less',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800, color: Colors.blue),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800, color: Colors.blue),
                  ),
                  ///Reviews
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SSectionHeading(title: 'Reviews (199)', showActionButton: false),
                      IconButton(onPressed: () => Get.to(const ProductReviewsScreen()), icon: const Icon(Iconsax.arrow_right_3, size: 18,)),
                    ],
                  ),

                  const SizedBox(height: TSizes.spaceBtwSections),


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ss_store/features/screens/home/widgets/home_appbar.dart';
import 'package:ss_store/features/screens/home/widgets/home_category.dart';
import 'package:ss_store/features/screens/home/widgets/promo_slider.dart';
import 'package:ss_store/utils/constants/image_strings.dart';
import '../../../common/widgets/containers/primary_header_container.dart';
import '../../../common/widgets/containers/search_container.dart';
import '../../../common/widgets/layout/grid_layout.dart';
import '../../../common/widgets/products_cart/product_card_vertical.dart';
import '../../../common/widgets/texts_widgets/section_heading.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SPrimaryHeaderContainer(
              child: Column(
                children: [
                  ///Appbar
                  SHomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  ///Searchbar
                  SSearchContainer(text: STexts.search),
                  SizedBox(height: TSizes.spaceBtwSections),

                  ///Categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        ///heading
                        SSectionHeading(
                          title: STexts.pCategory,
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(height: TSizes.spaceBtwItems),

                        ///categories
                        SHomeCategory(),
                      ],
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const SPromoSlider(
                    banners: [
                      SImages.banner1,
                      SImages.banner2,
                      SImages.banner3
                    ],
                  ),
                  ///Heading
                  SSectionHeading(title: 'Popular Products', onPressed: (){},),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  SGridLayout(itemCount: 10, itemBuilder: (_, index) => const SProductCardVertical(),),
                  //  SProductCardVertical(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



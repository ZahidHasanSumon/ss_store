import 'package:flutter/material.dart';
import 'package:ss_store/common/widgets/appbar/appbar.dart';
import 'package:ss_store/common/widgets/appbar/tabbar.dart';
import 'package:ss_store/common/widgets/containers/search_container.dart';
import 'package:ss_store/common/widgets/layout/grid_layout.dart';
import 'package:ss_store/common/widgets/products_cart/cart_menu_icon.dart';
import 'package:ss_store/common/widgets/texts_widgets/section_heading.dart';
import 'package:ss_store/utils/constants/sizes.dart';

import '../../../common/widgets/products_cart/brand_card.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_function.dart';
import '../widgets/category_tab.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: SAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          action: [
            SCartCounterIcon(onPressed: () {}),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: SHelperFunctions.isDarkMode(context)
                    ? SColors.black
                    : SColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(height: TSizes.spaceBtwItems),
                      const SSearchContainer(
                        text: 'Search in store',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(height: TSizes.spaceBtwSections),

                      ///Featured Brands
                      SSectionHeading(
                        title: 'Feature Brands',
                        onPressed: () {},
                      ),
                      const SizedBox(height: TSizes.spaceBtwItems / 1.5),

                      SGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return const SBrandCard(
                            showBorder: false,
                          );
                        },
                      ),
                    ],
                  ),
                ),
                bottom: const STabBar(
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Cloths')),
                    Tab(child: Text('Shoes')),
                    Tab(child: Text('Cosmetics')),
                    Tab(child: Text('Furniture')),
                  ],
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              SCategoryTab(),
              SCategoryTab(),
              SCategoryTab(),
              SCategoryTab(),
              SCategoryTab(),

            ],
          ),
        ),
      ),
    );
  }
}

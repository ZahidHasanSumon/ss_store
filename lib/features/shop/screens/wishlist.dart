import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ss_store/common/widgets/appbar/appbar.dart';
import 'package:ss_store/common/widgets/icons/scircular_wishlist_icon.dart';
import 'package:ss_store/common/widgets/layout/grid_layout.dart';
import 'package:ss_store/common/widgets/products_cart/product_card_vertical.dart';
import 'package:ss_store/features/screens/home/home.dart';
import 'package:ss_store/utils/constants/sizes.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(
        title:
            Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium),
        action: [
          SCircularWishListIcon(
            icon: Iconsax.add,
            onPressed: () => Get.to(const HomeScreen()),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              SGridLayout(
                  itemCount: 6,
                  itemBuilder: (_, index) => const SProductCardVertical()),
            ],
          ),
        ),
      ),
    );
  }
}

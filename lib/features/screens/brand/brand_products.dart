import 'package:flutter/material.dart';
import 'package:ss_store/common/widgets/appbar/appbar.dart';
import 'package:ss_store/common/widgets/products_cart/brand_card.dart';
import 'package:ss_store/common/widgets/sortable/sortable_products.dart';
import 'package:ss_store/utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SAppBar(
        title: Text('Nike'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              SBrandCard(showBorder: true),
              SizedBox(height: TSizes.spaceBtwItems),
              SSortableProducts(),
            ],
          ),
        ),
      ),

    );
  }
}

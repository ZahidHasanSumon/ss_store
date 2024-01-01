import 'package:flutter/material.dart';

import '../../../../common/widgets/products_cart/add_remove_button_cart.dart';
import '../../../../common/widgets/products_cart/cart_item.dart';
import '../../../../common/widgets/texts/product_price_text.dart';
import '../../../../utils/constants/sizes.dart';

class MainCartItems extends StatelessWidget {
  const MainCartItems({
    super.key, this.showAddRemoveButton = true, this.customPhysics,
  });
  final bool showAddRemoveButton;
  final ScrollPhysics ? customPhysics;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: customPhysics,
      shrinkWrap: true,
      separatorBuilder: (_, __) =>
      const SizedBox(height: TSizes.spaceBtwSections),
      itemCount: 10,
      itemBuilder: (_, index) => Column(
        children: [
          const SCartItems(),
          if(showAddRemoveButton) const SizedBox(height: TSizes.spaceBtwItems),
          if(showAddRemoveButton)
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 70),

                  ///add or, remove button
                  ///
                  SProductQuantityWithAddRemove(),
                ],
              ),
              SProductPriceText(price: '20000'),
            ],
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/sizes.dart';
import '../layout/grid_layout.dart';
import '../products_cart/product_card_vertical.dart';

class SSortableProducts extends StatelessWidget {
  const SSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField(
          decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          onChanged: (value) {},
          items: [
            'Name',
            'Higher Price',
            'Lower Price',
            'Newest',
            'Popularity'
          ].map((option) => DropdownMenuItem(value: option, child: Text(option))).toList(),
        ),
        const SizedBox(height: TSizes.spaceBtwSections),

        ///all products
        SGridLayout(itemCount: 30, itemBuilder: (_, index) => const SProductCardVertical()),
      ],
    );
  }
}
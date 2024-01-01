import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ss_store/features/screens/cart/cart.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_function.dart';


class SCartCounterIcon extends StatelessWidget {
  const SCartCounterIcon({
    super.key, required this.onPressed, this.iconColor,
  });
  final Color? iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {

    final dark = SHelperFunctions.isDarkMode(context);

    return Stack(
      children: [
        IconButton(
            onPressed: () => Get.to(() => const CartScreen()),
            icon: Icon(
              Iconsax.shopping_bag,
              color: dark ? SColors.white : SColors.black,
            )),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: SColors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                '0',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: SColors.white, fontSizeFactor: 0.8),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
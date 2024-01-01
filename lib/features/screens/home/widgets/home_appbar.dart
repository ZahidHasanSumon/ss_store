import 'package:flutter/material.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/products_cart/cart_menu_icon.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/text_strings.dart';

class SHomeAppBar extends StatelessWidget {
  const SHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            STexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: SColors.grey),
          ),
          Text(
            STexts.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: SColors.white),
          ),
        ],
      ),
      action:  [
        SCartCounterIcon(onPressed: (){}, iconColor: SColors.white,),
      ],
    );
  }
}
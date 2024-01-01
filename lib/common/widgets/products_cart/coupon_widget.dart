import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_function.dart';
import '../containers/rounded_container.dart';

class SCouponCode extends StatelessWidget {
  const SCouponCode({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return SRoundedContainer(
      showBorder: true,
      bgColor: dark ? SColors.dark : SColors.white,
      padding: const EdgeInsets.only(
          top: TSizes.sm,
          bottom: TSizes.sm,
          left: TSizes.sm,
          right: TSizes.md),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Have any promo code?',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: dark
                    ? SColors.white.withOpacity(0.5)
                    : SColors.dark.withOpacity(0.5),
                backgroundColor: SColors.grey.withOpacity(0.2),
                side: BorderSide(
                  color: SColors.grey.withOpacity(0.1),
                ),
              ),
              child: const Text('Apply'),
            ),
          ),
        ],
      ),
    );
  }
}
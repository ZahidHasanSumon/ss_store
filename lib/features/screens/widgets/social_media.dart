import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class SSocialButton extends StatelessWidget {
  const SSocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all(color: SColors.grey), borderRadius: BorderRadius.circular(100),),
          child: IconButton(
            onPressed: (){},
            icon: const Image(
              width: TSizes.iconMd,
              height: TSizes.iconMd,
              image: AssetImage(SImages.googleIcon),
            ),
          ),

        ),
        const SizedBox(width: TSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(border: Border.all(color: SColors.grey), borderRadius: BorderRadius.circular(100),),
          child: IconButton(
            onPressed: (){},
            icon: const Image(
              width: TSizes.iconMd,
              height: TSizes.iconMd,
              image: AssetImage(SImages.facebookIcon),
            ),
          ),

        ),

      ],
    );
  }
}
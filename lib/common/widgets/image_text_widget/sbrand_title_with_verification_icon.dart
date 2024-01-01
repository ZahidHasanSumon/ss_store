import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ss_store/utils/constants/enums.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../texts/sbrand_title_text.dart';

class SBrandTitleWithVerificationIcon extends StatelessWidget {
  const SBrandTitleWithVerificationIcon({
    super.key,
    required this.title,
     this.maxLine = 1,
    this.textColor,
    this.iconColor = SColors.primary,
    this.textAlign = TextAlign.left,
    this.brandTextSizes = TextSizes.small,
  });

  final String title;
  final int maxLine;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: SBrandTitleText(
            title: title,
            color: textColor,
            maxLine: maxLine,
            textAlign: textAlign,
            brandTextSize: brandTextSizes,

          ),
        ),
        const SizedBox(height: TSizes.xs),
        Icon(
          Iconsax.verify5,
          color: iconColor,
          size: TSizes.iconXs,
        )
      ],
    );
  }
}

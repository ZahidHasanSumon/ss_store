
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_function.dart';
import '../containers/rounded_container.dart';
import '../image_text_widget/sbrand_title_with_verification_icon.dart';
import 'package:flutter/material.dart';

import '../images/scircular_image.dart';

class SBrandCard extends StatelessWidget {
  const SBrandCard({
    super.key, required this.showBorder, this.onTap,
  });
  final bool showBorder;
  final void Function() ? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ,
      child: SRoundedContainer(
        // padding: const EdgeInsets.all(TSizes.sm),
        showBorder: false,
        bgColor: Colors.transparent,
        child: Row(
          children: [
            Flexible(
              child: SCircularImage(
                image: SImages.clothIcon,
                isNetworkImage: false,
                backgroundColor: Colors.transparent,
                overlayColor:
                SHelperFunctions.isDarkMode(context)
                    ? SColors.white
                    : SColors.black,
              ),
            ),
            const SizedBox(
                width: TSizes.spaceBtwItems / 2),

            ///text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  const SBrandTitleWithVerificationIcon(
                      title: 'Nike',
                      brandTextSizes: TextSizes.large),
                  Text(
                    '256 products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
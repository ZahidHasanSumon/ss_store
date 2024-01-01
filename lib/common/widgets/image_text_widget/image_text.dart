import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_function.dart';

class SVerticalImagesText extends StatelessWidget {
  const SVerticalImagesText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = SColors.white,
    this.backgroundColor,
    this.onPressed,
  });
  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    //final dark = SHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.only(right: TSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(TSizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ??
                    (SHelperFunctions.isDarkMode(context)
                        ? SColors.darkGrey
                        : SColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: SHelperFunctions.isDarkMode(context)
                      ? SColors.black
                      : SColors.dark,
                ),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
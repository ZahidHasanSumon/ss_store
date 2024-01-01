import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/device/device_utility.dart';
import '../../../utils/helpers/helper_function.dart';

class SSearchContainer extends StatelessWidget {
  const SSearchContainer({
    super.key,
    required this.text,
    this.icon,
    this.showBackground = true,
    this.showBorder = true,
    this.onTab,
    this.padding = const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTab;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final darkMode = SHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTab,
      child: Padding(
        padding: padding,
        child: Container(
          width: SDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(TSizes.md),
          decoration: BoxDecoration(
            color: showBackground
                ? darkMode
                    ? SColors.white
                    : SColors.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(TSizes.cardRadiusLG),
            border: showBorder ? Border.all(color: SColors.grey) : null,
          ),
          child: Row(
            children: [
              const Icon(Iconsax.search_normal, color: SColors.darkerGrey),
              const SizedBox(width: TSizes.spaceBtwSections),
              Text(
                text,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .apply(color: SColors.darkGrey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

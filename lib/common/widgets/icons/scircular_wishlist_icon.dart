import 'package:flutter/material.dart';
import 'package:ss_store/utils/constants/sizes.dart';
import 'package:ss_store/utils/helpers/helper_function.dart';

import '../../../utils/constants/colors.dart';

class SCircularWishListIcon extends StatelessWidget {
  const SCircularWishListIcon({
    super.key,
    this.width,
    this.height,
    this.size = TSizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor != null
            ? backgroundColor!
            : SHelperFunctions.isDarkMode(context)
                ? SColors.black.withOpacity(0.9)
                : SColors.white.withOpacity(0.9),
      ),
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          icon,
          color: color,
          size: size,
        ),
      ),
    );
  }
}

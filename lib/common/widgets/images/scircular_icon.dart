import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_function.dart';

class SCircularIcon extends StatelessWidget {
  const SCircularIcon({
    super.key,
    required this.icon,
    this.isNetworkImage = false,
    this.overlayColor,
    this.backgroundColor,
    this.width,
    this.height,
    this.size = TSizes.lg,
    this.onPressed,
  });

  final IconData icon;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double? width, height, size;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor != null
            ? backgroundColor!
            : SHelperFunctions.isDarkMode(context)
                ? SColors.black.withOpacity(0.9)
                : SColors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            color: overlayColor,
            size: size,
          )),
    );
  }
}

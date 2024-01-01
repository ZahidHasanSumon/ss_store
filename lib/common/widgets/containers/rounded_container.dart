import 'package:flutter/material.dart';
import 'package:ss_store/utils/constants/sizes.dart';

import '../../../utils/constants/colors.dart';

class SRoundedContainer extends StatelessWidget {
  const SRoundedContainer({
    super.key,
    this.width,
    this.height,
    this.radius = TSizes.cardRadiusLG,
    this.child,
    this.showBorder = false,
    this.borderColor = SColors.borderPrimary,
    this.bgColor = SColors.white,
    this.padding,
    this.margin,
  });

  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final Color bgColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}

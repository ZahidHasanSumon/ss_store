import 'package:flutter/material.dart';
import 'package:ss_store/utils/constants/colors.dart';
import 'package:ss_store/utils/device/device_utility.dart';
import 'package:ss_store/utils/helpers/helper_function.dart';

class STabBar extends StatelessWidget implements PreferredSizeWidget{
  const STabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? SColors.black : SColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: SColors.primary,
        labelColor: dark ? SColors.white : SColors.primary,
        unselectedLabelColor: SColors.darkGrey,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(SDeviceUtils.getAppBarHeight());
}

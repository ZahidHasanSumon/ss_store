import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ss_store/common/widgets/appbar/appbar.dart';
import 'package:ss_store/common/widgets/containers/primary_header_container.dart';
import 'package:ss_store/common/widgets/texts_widgets/section_heading.dart';
import 'package:ss_store/features/screens/cart/widgets/cart_items.dart';
import 'package:ss_store/features/screens/checkout/checkout.dart';
import 'package:ss_store/features/screens/order/order.dart';
import 'package:ss_store/utils/constants/colors.dart';
import 'package:ss_store/utils/constants/sizes.dart';
import '../../../../common/widgets/list_tiles/settings_menu_tile.dart';
import '../../../../common/widgets/list_tiles/user_profile_tile.dart';
import '../address/address.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///header
            SPrimaryHeaderContainer(
              child: Column(
                children: [
                  SAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: SColors.white),
                    ),
                  ),

                  ///user profile
                  const SUserProfileTile(),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

            ///body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const SSectionHeading(
                    title: 'Account Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  SSettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Address',
                    subTitle: 'Set shopping delivery address',
                    onTap: () => Get.to(() => const UserAddressScreen()),
                  ),

                  SSettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subTitle: 'Add, remove products and move to checkout',
                    onTap: () => Get.to(() => const CheckoutScreen()),
                  ),

                  SSettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subTitle: 'In-progress and Completed Orders',
                    onTap: () => Get.to(() => const OrderScreen()),
                  ),

                  SSettingsMenuTile(
                    icon: Iconsax.bank,
                    title: 'Bank Account',
                    subTitle: 'Add credit/debit card',
                    onTap: () {},
                  ),

                  SSettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subTitle: 'List of all discount coupons',
                    onTap: () {},
                  ),

                  SSettingsMenuTile(
                    icon: Iconsax.notification,
                    title: 'Notifications',
                    subTitle: 'Set notifications according to your choice',
                    onTap: () {},
                  ),

                  SSettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: 'Account Privacy',
                    subTitle: 'Manage data usage and connected accounts',
                    onTap: () {},
                  ),

                  /// App settings
                  const SizedBox(height: TSizes.spaceBtwSections),
                  const SSectionHeading(
                      title: 'App Settings', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const SSettingsMenuTile(
                      icon: Iconsax.cloud_add,
                      title: 'Load Data',
                      subTitle: 'Upload Data to your Cloud Firebase'),

                  SSettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subTitle: 'Set recommendation based on location',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  SSettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subTitle: 'Search result is safe for all ages',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),

                  ///Logout button
                  const SizedBox(height: TSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('Logout'),
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections * 2.5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

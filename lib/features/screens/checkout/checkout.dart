import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ss_store/common/widgets/containers/rounded_container.dart';
import 'package:ss_store/common/widgets/success_screen.dart';
import 'package:ss_store/features/screens/cart/widgets/billing_payment_section.dart';
import 'package:ss_store/features/screens/cart/widgets/cart_items.dart';
import 'package:ss_store/navigation_menu.dart';
import 'package:ss_store/utils/constants/image_strings.dart';
import 'package:ss_store/utils/helpers/helper_function.dart';
import '../../../common/widgets/appbar/appbar.dart';
import '../../../common/widgets/products_cart/coupon_widget.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../cart/widgets/billing_address_section.dart';
import '../cart/widgets/billing_method_section.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: SAppBar(
        title: Text('Order Review',
            style: Theme.of(context).textTheme.headlineSmall),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const MainCartItems(
                showAddRemoveButton: false,
                customPhysics: NeverScrollableScrollPhysics(),
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              const SCouponCode(),
              const SizedBox(height: TSizes.spaceBtwSections),

              ///Billing Section
              SRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(TSizes.md),
                bgColor: dark ? SColors.black : SColors.white,
                child: const Column(
                  children: [
                    ///pricing
                    SBillingPaymentSection(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    ///divider
                    Divider(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    ///payment methods
                    SBillingMethodSection(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    SBillingAddressSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(
                  () => SuccessScreen(
                    image: SImages.accCreated,
                    title: 'Payment Success!',
                    subTitle: 'Your item will be shipped soon',
                    onPressed: () => Get.offAll(() => const NavigationMenu()),
                  ),
                ),
            child: const Text('Checkout ৳20000')),
      ),
    );
  }
}

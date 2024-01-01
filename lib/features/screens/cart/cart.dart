import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ss_store/common/widgets/appbar/appbar.dart';
import 'package:ss_store/features/screens/cart/widgets/cart_items.dart';
import 'package:ss_store/utils/constants/sizes.dart';
import '../checkout/checkout.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
        showBackArrow: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: MainCartItems(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: () => Get.to(() => const CheckoutScreen()), child: const Text('Checkout ৳20000')),
      ),
    );
  }
}



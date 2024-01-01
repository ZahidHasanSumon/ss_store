import 'package:flutter/material.dart';
import 'package:ss_store/common/widgets/appbar/appbar.dart';
import 'package:ss_store/features/screens/order/widgets/orderlistitems.dart';
import 'package:ss_store/utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(
        showBackArrow: true,
        title: Text(
          'My Orders',
          style: Theme.of(context).textTheme.headlineSmall,

        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: SOrderListItems(),
      ),
    );
  }
}

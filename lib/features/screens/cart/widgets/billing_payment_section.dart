import 'package:flutter/material.dart';
import 'package:ss_store/utils/constants/sizes.dart';

class SBillingPaymentSection extends StatelessWidget {
  const SBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///sub total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal', style: Theme.of(context).textTheme.bodyMedium),
            Text('2000.00', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2),

        ///shipping fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Fee', style: Theme.of(context).textTheme.bodyMedium),
            Text('200.00', style: Theme.of(context).textTheme.bodyMedium),

          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Total Amount', style: Theme.of(context).textTheme.bodyMedium),
            Text('2200.00', style: Theme.of(context).textTheme.bodyMedium),

          ],
        ),

      ],
    );
  }
}

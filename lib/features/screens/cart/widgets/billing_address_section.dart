import 'package:flutter/material.dart';
import 'package:ss_store/common/widgets/texts_widgets/section_heading.dart';
import 'package:ss_store/utils/constants/colors.dart';

import '../../../../utils/constants/sizes.dart';

class SBillingAddressSection extends StatelessWidget {
  const SBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SSectionHeading(title: 'Shipping Address', buttonTitle: 'Change', onPressed: (){}),
        Text('Zahid Hasan', style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: TSizes.spaceBtwItems /2),
        Row(
          children: [
            const Icon(Icons.phone, color: SColors.grey, size: 16),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('098654321', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems /2),

        Row(
          children: [
            const Icon(Icons.location_history, color: SColors.grey, size: 16),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('South Liana, USA', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems /2),


      ],
    );
  }
}

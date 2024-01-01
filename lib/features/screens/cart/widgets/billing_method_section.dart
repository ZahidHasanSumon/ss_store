import 'package:flutter/material.dart';
import 'package:ss_store/common/widgets/containers/rounded_container.dart';
import 'package:ss_store/common/widgets/texts_widgets/section_heading.dart';
import 'package:ss_store/utils/constants/colors.dart';
import 'package:ss_store/utils/constants/image_strings.dart';
import 'package:ss_store/utils/helpers/helper_function.dart';

import '../../../../utils/constants/sizes.dart';

class SBillingMethodSection extends StatelessWidget {
  const SBillingMethodSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        SSectionHeading(title: 'Payment Method', buttonTitle: 'Change', onPressed: (){}),
        const SizedBox(height: TSizes.spaceBtwItems / 2),

        Row(
          children: [
            SRoundedContainer(
              width: 60,
              height: 60,
              bgColor: dark ? SColors.light : SColors.white,
              padding: const EdgeInsets.all(TSizes.sm),
              child: const Image(image: AssetImage(SImages.paypal), fit: BoxFit.contain,),

            ),
            const SizedBox(width: TSizes.spaceBtwItems / 2),
            Text('Paypal', style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),

      ],

    );
  }
}

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ss_store/common/widgets/containers/rounded_container.dart';
import 'package:ss_store/utils/constants/sizes.dart';
import 'package:ss_store/utils/helpers/helper_function.dart';

import '../../../../utils/constants/colors.dart';

class SOrderListItems extends StatelessWidget {
  const SOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 15,
      separatorBuilder: (_, __) => const SizedBox(height: TSizes.spaceBtwItems),
      itemBuilder:(_, index) => SRoundedContainer(
        showBorder: true,
        bgColor: dark ? SColors.dark : SColors.light,
        padding: const EdgeInsets.all(TSizes.md),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                const Icon(Iconsax.ship),
                const SizedBox(width: TSizes.spaceBtwItems / 2),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Processing',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .apply(color: SColors.primary, fontWeightDelta: 1),
                      ),
                      Text(
                        '07 Nov, 2023',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Iconsax.arrow_right_34,
                    size: TSizes.iconSm,
                  ),
                ),
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      const Icon(Iconsax.tag),
                      const SizedBox(width: TSizes.spaceBtwItems / 2),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Order',
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Text(
                              '[#233g4]',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      const Icon(Iconsax.calendar),
                      const SizedBox(width: TSizes.spaceBtwItems / 2),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Shipping Date',
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Text(
                              '10 Jan, 2024',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

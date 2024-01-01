
import 'package:flutter/material.dart';
import 'package:ss_store/common/widgets/containers/rounded_container.dart';
import 'package:ss_store/common/widgets/texts/product_price_text.dart';
import 'package:ss_store/common/widgets/texts/product_title_text.dart';
import 'package:ss_store/common/widgets/texts_widgets/section_heading.dart';
import 'package:ss_store/utils/constants/colors.dart';
import 'package:ss_store/utils/constants/sizes.dart';

import '../../../../../common/widgets/chips/choice_chip.dart';
import '../../../../../utils/helpers/helper_function.dart';

class SProductAttributes extends StatelessWidget {
  const SProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = SHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        SRoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          bgColor: darkMode ? SColors.darkerGrey : SColors.grey,
          child: Column(
            children: [
              ///title, price and stock status
              Row(
                children: [
                  const SSectionHeading(
                      title: 'Variation', showActionButton: false),
                  const SizedBox(width: TSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const SProductTitleText(
                              title: 'Price : ', smallSize: true),
                          const SizedBox(width: TSizes.spaceBtwItems),

                          ///actual price
                          Text(
                            '৳3000',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: TSizes.spaceBtwItems),

                          ///sale price
                          const SProductPriceText(price: '2400'),
                        ],
                      ),
                      Row(
                        children: [
                          const SProductTitleText(
                              title: 'Stock : ', smallSize: true),
                          Text('In Stock',
                              style: Theme.of(context).textTheme.titleMedium),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              ///variation description
              const SProductTitleText(
                title: 'This is product description and max line is 4.',
                smallSize: true,
                maxLine: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        ///attributes
         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SSectionHeading(
              title: 'Colors',
              showActionButton: false,
            ),
            const SizedBox(width: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                SChoiceChip(text: 'Green', selected: false, onSelected: (value){}),
                SChoiceChip(text: 'Red', selected: true, onSelected: (value){}),
                SChoiceChip(text: 'Blue', selected: false, onSelected: (value){}),
                SChoiceChip(text: 'Black', selected: false, onSelected: (value){}),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SSectionHeading(
              title: 'Size',
              showActionButton: false,
            ),
            const SizedBox(width: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                SChoiceChip(text: 'Small', selected: false, onSelected: (value){}),
                SChoiceChip(text: 'Large', selected: false, onSelected: (value){}),
                SChoiceChip(text: 'XL', selected: true, onSelected: (value){}),
                SChoiceChip(text: 'XXL', selected: false, onSelected: (value){}),
              ],
            ),
          ],
        ),
      ],
    );
  }
}



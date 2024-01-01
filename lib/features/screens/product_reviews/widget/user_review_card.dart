import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:ss_store/common/widgets/containers/rounded_container.dart';
import 'package:ss_store/common/widgets/ratings/rating_indicator.dart';
import 'package:ss_store/utils/constants/colors.dart';
import 'package:ss_store/utils/constants/sizes.dart';
import 'package:ss_store/utils/helpers/helper_function.dart';

import '../../../../utils/constants/image_strings.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(

              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(SImages.user1),
                ),
                const SizedBox(width: TSizes.spaceBtwItems),
                Text('John Doe', style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
/// review
        Row(
          children: [
            const SRatingBarIndicator(rating: 4),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('26th Dec, 2023', style: Theme.of(context).textTheme.bodyMedium),
            
          ],

        ),
        const SizedBox(width: TSizes.spaceBtwItems),
        const ReadMoreText(
            'Though five-star ratings are a beacon of success, they alone cannot narrate the full story of your stellar services. A rating, irrespective of how high, needs the support of a well-crafted, positive review to set your business apart.',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: 'show less',
          trimCollapsedText: 'show more',
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: SColors.primary),
          lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: SColors.primary),



        ),

        const SizedBox(height: TSizes.spaceBtwItems),

        ///company reviews
        SRoundedContainer(
          bgColor: dark ? SColors.darkerGrey : SColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("SS Store", style: Theme.of(context).textTheme.titleMedium),
                    Text("20 Dec, 2023", style: Theme.of(context).textTheme.bodyMedium),
                  ],


                ),
                const SizedBox(width: TSizes.spaceBtwItems),
                const ReadMoreText(
                  'Though five-star ratings are a beacon of success, they alone cannot narrate the full story of your stellar services. A rating, irrespective of how high, needs the support of a well-crafted, positive review to set your business apart.',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: 'show less',
                  trimCollapsedText: 'show more',
                  moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: SColors.primary),
                  lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: SColors.primary),



                ),

              ],
            ),
          ),

        ),
        const SizedBox(height: TSizes.spaceBtwSections),

      ],
    );
  }
}

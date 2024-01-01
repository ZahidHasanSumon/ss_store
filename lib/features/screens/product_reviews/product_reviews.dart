import 'package:flutter/material.dart';
import 'package:ss_store/common/widgets/appbar/appbar.dart';
import 'package:ss_store/features/screens/product_reviews/widget/rating_progress_indicator.dart';
import 'package:ss_store/features/screens/product_reviews/widget/user_review_card.dart';
import '../../../common/widgets/ratings/rating_indicator.dart';
import '../../../utils/constants/sizes.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SAppBar(
        title: Text('Reviews & Ratings'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Ratings and reviews are verified'),
              const SizedBox(height: TSizes.spaceBtwItems),

              ///overall product ratings
              const SOverallProductRating(),
              const SRatingBarIndicator(rating: 3.5),
              Text('12,611', style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: TSizes.spaceBtwSections),

              ///user reviews list
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),


            ],
          ),
        ),
      ),
    );
  }
}



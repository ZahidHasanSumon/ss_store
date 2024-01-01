import 'package:flutter/material.dart';
import 'package:ss_store/features/screens/product_reviews/widget/progress_indicator_and_rating.dart';

class SOverallProductRating extends StatelessWidget {
  const SOverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 3,
            child: Text('4.8',
                style: Theme.of(context).textTheme.displayLarge)),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              SRatingProgressIndicator(text: '5', value: 1.0),
              SRatingProgressIndicator(text: '4', value: 0.8),
              SRatingProgressIndicator(text: '3', value: 0.6),
              SRatingProgressIndicator(text: '2', value: 0.4),
              SRatingProgressIndicator(text: '1', value: 0.2),
            ],
          ),
        ),
      ],
    );
  }
}
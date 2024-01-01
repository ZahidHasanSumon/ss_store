import 'package:flutter/material.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/constants/text_strings.dart';
import '../../utils/helpers/helper_function.dart';
import '../styles/spacing_style.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, this.onPressed});

  final String image, title, subTitle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SSpacingStyle.paddingWithBarHeight * 2,
          child: Column(
            children: [
              Image(
                image:  AssetImage(image),
                width: SHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              Text(
                 title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed,
                  child: const Text(STexts.sContinue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

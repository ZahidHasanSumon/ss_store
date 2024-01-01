import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ss_store/features/screens/signup_widgets/signup_form.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../widgets/form_divider.dart';
import '../widgets/social_media.dart';


class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///title
              Text(
                STexts.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),

              ///form
              const SignUpForm(),
              const SizedBox(height: TSizes.spaceBtwSections),
              SFormDivider(dividerText: STexts.orSignUp.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),
              const SSocialButton(),
              
            ],
          ),
        ),
      ),
    );
  }
}

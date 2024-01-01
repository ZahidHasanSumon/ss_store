import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ss_store/common/styles/spacing_style.dart';
import 'package:ss_store/utils/constants/sizes.dart';
import 'package:ss_store/utils/constants/text_strings.dart';
import 'package:ss_store/utils/helpers/helper_function.dart';
import '../widgets/form_divider.dart';
import '../widgets/login_form.dart';
import '../widgets/login_header.dart';
import '../widgets/social_media.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SSpacingStyle.paddingWithBarHeight,
          child: Column(
            children: [
              SLoginHeader(dark: dark),
              const SLoginForm(),

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





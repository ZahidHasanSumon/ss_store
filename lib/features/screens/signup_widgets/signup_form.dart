import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ss_store/features/screens/signup_widgets/verify_email.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_function.dart';


class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: STexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),

              const SizedBox(width: TSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: STexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              //  TextFormField(),
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: STexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: STexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: STexts.phone,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: STexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),
          // TextFormField(
          //   expands: false,
          //   decoration: const InputDecoration(
          //     labelText: STexts.email,
          //     prefixIcon: Icon(Iconsax.direct),
          //   ),
          // ),
          const SizedBox(height: TSizes.spaceBtwInputFields),
          Row(
            children: [
              SizedBox(
                  width: 24,
                  height: 24,
                  child:
                  Checkbox(value: true, onChanged: (value) {})),
              const SizedBox(width: TSizes.spaceBtwItems),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: '${STexts.iAgree} ',
                        style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                      text: '${STexts.privacyPolicy} ',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .apply(
                        color: dark
                            ? SColors.white
                            : SColors.primary,
                      ),
                    ),
                    TextSpan(
                        text: '${STexts.and} ',
                        style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                      text: STexts.termOfUse,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .apply(
                        color: dark
                            ? SColors.white
                            : SColors.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwSections),

          ///signup button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen()),
              child: const Text(STexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}

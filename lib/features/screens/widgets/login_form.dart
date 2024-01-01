import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ss_store/navigation_menu.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../config_password/forget_password.dart';
import '../signup_widgets/signup.dart';



class SLoginForm extends StatelessWidget {
  const SLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: STexts.email,
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: STexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields / 2),
            ///remember me & forget password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(STexts.rememberMe),
                  ],
                ),
                ///forget password
                TextButton(
                  onPressed: () => Get.to(() => const ForgetPassword()),
                  child: const Text(STexts.forgetPassword),
                ),
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            ///sign in button

            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => const NavigationMenu()), child: const Text(STexts.signIn),),),
            const SizedBox(height: TSizes.spaceBtwItems),
            SizedBox(width: double.infinity, child: OutlinedButton(onPressed: () => Get.to(()=> const SignUpScreen()), child: const Text(STexts.createAccount),),),
            const SizedBox(height: TSizes.spaceBtwSections),
          ],
        ),
      ),
    );
  }
}
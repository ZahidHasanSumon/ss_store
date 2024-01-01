import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ss_store/features/screens/config_password/reset_password.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(STexts.forgetPassword, style: Theme.of(context).textTheme.headlineMedium,),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text(STexts.forgetPassword, style: Theme.of(context).textTheme.labelMedium,),
            const SizedBox(height: TSizes.spaceBtwSections * 2),

            ///textfield
            TextFormField(
              decoration: const InputDecoration(
                labelText: STexts.email,
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwSections),
            
            ///submit button
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.off(() => const ResetPassword()), child: const Text(STexts.submit),)),
          ],
        ),
      ),
    );
  }
}

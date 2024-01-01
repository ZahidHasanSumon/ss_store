import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ss_store/utils/constants/image_strings.dart';
import 'package:ss_store/utils/constants/text_strings.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.back(), icon: const Icon(CupertinoIcons.clear),),
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),

          child: Column(
            children: [

              Image(
                image:  const AssetImage(SImages.deliveredEmail),
                width: SHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              Text(
                STexts.changePassword,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              Text(
                STexts.changePasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){},
                  child: const Text(STexts.done),
                ),
              ),

              const SizedBox(height: TSizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){},
                  child: const Text(STexts.resendMail),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}

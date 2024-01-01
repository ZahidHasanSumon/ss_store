import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ss_store/common/widgets/appbar/appbar.dart';
import 'package:ss_store/common/widgets/images/scircular_image.dart';
import 'package:ss_store/common/widgets/texts_widgets/section_heading.dart';
import 'package:ss_store/features/personalization/screens/profile/profile_menu.dart';
import 'package:ss_store/utils/constants/image_strings.dart';
import 'package:ss_store/utils/constants/sizes.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SAppBar(
        title: Text('Profile'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const SCircularImage(
                        image: SImages.user1, width: 80, height: 80),
                    TextButton(
                        onPressed: () {},
                        child: const Text('Change Profile Picture')),
                  ],
                ),
              ),

              ///details
              const SizedBox(height: TSizes.spaceBtwItems / 2),
              const Divider(),
              const SSectionHeading(title: 'Profile Information', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),

              SProfileMenu(title: 'Name', value: 'Zahid Hasan Sumon', onPressed: (){}),
              const SProfileMenu(title: 'Username', value: 'Zahid'),

              const SizedBox(height: TSizes.spaceBtwItems),
              const Divider(),
              const SSectionHeading(title: 'Personal Information', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),

              const SProfileMenu(title: 'User ID', value: '454647', icon: Iconsax.copy),
              const SProfileMenu(title: 'E-mail', value: 'zahidsumon15@gmail.com'),
              SProfileMenu(title: 'Phone Number', value: '+8801864465251', onPressed: (){}),
              const SProfileMenu(title: 'Gender', value: 'Male'),
              const SProfileMenu(title: 'Date of Birth', value: '01/05/1996'),

            ],
          ),
        ),
      ),
    );
  }
}



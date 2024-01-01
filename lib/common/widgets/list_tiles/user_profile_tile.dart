import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../features/personalization/screens/profile/profile.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../images/scircular_image.dart';

class SUserProfileTile extends StatelessWidget {
  const SUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const SCircularImage(
        image: SImages.user1,
        width: 50,
        height: 50,
        padding: 10,
      ),
      title: Text('Username',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: SColors.white)),
      subtitle: Text('support@gmail.com',
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .apply(color: SColors.white)),
      trailing: IconButton(
        onPressed: () => Get.to(() => const Profile()),
        icon: const Icon(
          Iconsax.edit,
          color: SColors.white,
        ),
      ),
    );
  }
}

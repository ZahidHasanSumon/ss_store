import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ss_store/features/screens/sub_category/sub_categories.dart';

import '../../../../common/widgets/image_text_widget/image_text.dart';
import '../../../../utils/constants/image_strings.dart';

class SHomeCategory extends StatelessWidget {
  const SHomeCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return SVerticalImagesText(
            image: SImages.shoeIcon,
            title: 'Shoes',
            onPressed: () => Get.to(() => const SubCategoriesScreen()),
          );
        },
      ),
    );
  }
}
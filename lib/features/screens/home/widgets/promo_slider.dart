import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ss_store/features/shop/controllers/home_controller.dart';
import 'package:ss_store/utils/constants/colors.dart';

import '../../../../common/widgets/containers/circular_container.dart';
import '../../../../common/widgets/images/srounded_image.dart';
import '../../../../utils/constants/sizes.dart';

class SPromoSlider extends StatelessWidget {
  const SPromoSlider({
    super.key, required this.banners,
  });
  final List <String> banners;


  @override
  Widget build(BuildContext context) {

    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),


          ),
          items: banners.map((url) => SRoundedImage(imageUrl: url)).toList(),

        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        Center(
          child: Obx(
              ()=> Row(
                mainAxisSize: MainAxisSize.min,
              children: [
                for(int i = 0; i < banners.length; i++)
                   SCircularContainer(
                    width: 20,
                    height: 4 ,
                    margin: const EdgeInsets.only(right: 5),
                    backgroundColor: controller.carouselCurrentIndex.value == i ? SColors.primary : SColors.grey,
                  ),
            
            
              ],
            ),
          ),
        ),
      ],
    );
  }
}
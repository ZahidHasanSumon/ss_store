import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ss_store/common/widgets/containers/rounded_container.dart';
import 'package:ss_store/utils/constants/colors.dart';
import 'package:ss_store/utils/constants/sizes.dart';
import 'package:ss_store/utils/helpers/helper_function.dart';

class SSingleAddress extends StatelessWidget {
  const SSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return SRoundedContainer(
      width: double.infinity,
      padding: const EdgeInsets.all(TSizes.md),
      showBorder: true,
      bgColor: selectedAddress
          ? SColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
              ? SColors.darkerGrey
              : SColors.grey,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress
                  ? dark
                      ? SColors.light
                      : SColors.dark
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'John Doe',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: TSizes.sm / 2),
              const Text('+8808765446', maxLines: 1, overflow: TextOverflow.ellipsis),
              const SizedBox(height: TSizes.sm / 2),
              const Text(
                '8999, hills, DC, London',
                maxLines: 1,
                softWrap: true,
              ),

            ],

          ),
        ],
      ),
    );
  }
}

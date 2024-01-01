import 'package:flutter/material.dart';
import 'package:ss_store/utils/constants/colors.dart';
import 'package:ss_store/utils/constants/sizes.dart';

class STextfieldTheme{
  STextfieldTheme._();


  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: SColors.darkerGrey,
    suffixIconColor: SColors.darkerGrey,
    labelStyle: const TextStyle().copyWith(fontSize: 14, color: SColors.black),
    hintStyle: const TextStyle().copyWith(fontSize: 14, color: SColors.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: SColors.black.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: SColors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: SColors.grey),

    ),

    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: SColors.dark),

    ),

    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: SColors.warning),

    ),

    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: SColors.warning),

    ),
  );


  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: SColors.darkGrey,
    suffixIconColor: SColors.darkGrey,
    labelStyle: const TextStyle().copyWith(fontSize: 14, color: SColors.white),
    hintStyle: const TextStyle().copyWith(fontSize: 14, color: SColors.white),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: SColors.white.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: SColors.darkGrey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: SColors.darkGrey),

    ),

    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: SColors.white),

    ),

    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: SColors.warning),

    ),

    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: SColors.warning),

    ),
  );
}

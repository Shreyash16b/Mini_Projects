import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeBluegray700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray700,
      );
  static get bodyLargeGray700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray700,
      );
  static get bodyLargeGray70001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray70001,
      );
  static get bodyLargeGray800 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray800,
        fontSize: 18.fSize,
      );
  static get bodyLargeGray80001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray80001.withOpacity(0.41),
      );
  static get bodyLargeGray80001ExtraLight =>
      theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray80001,
        fontWeight: FontWeight.w200,
      );
  static get bodyLargeGray80001Light => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray80001.withOpacity(0.41),
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeLightblueA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.lightBlueA700,
        fontSize: 17.fSize,
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyLargePrimary18 => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
      );
  static get bodyLargePrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 18.fSize,
      );
  static get bodyLargeTealA70001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.tealA70001,
        fontSize: 18.fSize,
      );
  static get bodyLargeTealA70001_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.tealA70001,
      );
  static get bodyLargeff000000 => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFF000000),
        fontSize: 17.fSize,
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 13.fSize,
      );
  static get bodyMediumGray500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray500,
        fontSize: 13.fSize,
      );
  static get bodyMediumGray70001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray70001,
        fontSize: 15.fSize,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fSize,
      );
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallGray50001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray50001,
        fontSize: 12.fSize,
      );
  static get bodySmallGray800 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray800,
        fontSize: 12.fSize,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 12.fSize,
      );
  static get bodySmallPrimary_1 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallRedA200 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.redA200,
        fontSize: 12.fSize,
      );
  static get bodySmallTealA70001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.tealA70001,
        fontSize: 12.fSize,
      );
  // Display text style
  static get displaySmall36 => theme.textTheme.displaySmall!.copyWith(
        fontSize: 36.fSize,
      );
  static get displaySmallRegular => theme.textTheme.displaySmall!.copyWith(
        fontSize: 36.fSize,
        fontWeight: FontWeight.w400,
      );
  static get displaySmallffffffff => theme.textTheme.displaySmall!.copyWith(
        color: Color(0XFFFFFFFF),
        fontWeight: FontWeight.w400,
      );
  static get displaySmallffffffff_1 => theme.textTheme.displaySmall!.copyWith(
        color: Color(0XFFFFFFFF),
      );
  // Headline text style
  static get headlineLargeBold => theme.textTheme.headlineLarge!.copyWith(
        fontSize: 33.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineMediumPrimary => theme.textTheme.headlineMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get headlineMediumPrimaryBold =>
      theme.textTheme.headlineMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 27.fSize,
        fontWeight: FontWeight.w700,
      );
  // Title text style
  static get titleLarge20 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 20.fSize,
      );
  static get titleLargeRedA200 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.redA200,
      );
  static get titleLargeRedA200Bold => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.redA200,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeffff5555 => theme.textTheme.titleLarge!.copyWith(
        color: Color(0XFFFF5555),
        fontSize: 20.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeffff5555Medium => theme.textTheme.titleLarge!.copyWith(
        color: Color(0XFFFF5555),
        fontSize: 20.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumGray80001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray80001,
      );
  static get titleMediumIndigoA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.indigoA700,
      );
  static get titleMediumSegoeUIBlack900 =>
      theme.textTheme.titleMedium!.segoeUI.copyWith(
        color: appTheme.black900,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumTealA70001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.tealA70001,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumTealA70001_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.tealA70001.withOpacity(0.67),
      );
  static get titleMediumff000000 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF000000),
        fontSize: 17.fSize,
      );
}

extension on TextStyle {
  TextStyle get segoeUI {
    return copyWith(
      fontFamily: 'Segoe UI',
    );
  }
}

import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLarge18 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 18.fSize,
      );
  static get bodyLargeBlack90001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black90001,
        fontSize: 18.fSize,
      );
  static get bodyLargeBluegray100 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray100,
        fontSize: 18.fSize,
      );
  static get bodyLargeBluegray700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray700,
      );
  static get bodyLargeGray600 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyLargeHeeboBluegray100 =>
      theme.textTheme.bodyLarge!.heebo.copyWith(
        color: appTheme.blueGray100,
        fontSize: 18.fSize,
      );
  static get bodyLargeIndigo100 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.indigo100,
        fontSize: 18.fSize,
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyLargeffcccbcf => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFFCCCBCF),
        fontSize: 18.fSize,
      );
  static get bodyMediumBluegray400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodyMediumBluegray700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray700,
      );
  static get bodyMediumGray500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray500,
      );
  static get bodyMediumGray600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyMediumPrimaryContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodyMediumffcccbcf => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFFCCCBCF),
      );
  static get bodySmallDeeppurpleA200 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.deepPurpleA200,
      );
  static get bodySmallGray600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
      );
  // Headline text style
  static get headlineLargeBlack90001 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w600,
      );
  static get headlineLargePrimary => theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Label text style
  static get labelLargeBluegray400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray400,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelMediumBluegray100 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blueGray100,
      );
  static get labelMediumDeeppurpleA200 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.deepPurpleA200,
      );
  static get labelMediumGray500 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray500,
      );
  static get labelMediumPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
      );
  static get titleLargeDeeppurpleA200 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.deepPurpleA200,
      );
  static get titleLargeDeeppurpleA200Bold =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.deepPurpleA200,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeGray200 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray200,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeGray500 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray500,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeHeeboPrimary =>
      theme.textTheme.titleLarge!.heebo.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMediumBlack90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumDeeppurpleA200 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.deepPurpleA200,
      );
  static get titleMediumDeeppurpleA20018 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.deepPurpleA200,
        fontSize: 18.fSize,
      );
  static get titleMediumDeeppurpleA200SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.deepPurpleA200,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumDeeppurpleA200SemiBold_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.deepPurpleA200,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray600 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray600,
        fontSize: 18.fSize,
      );
  static get titleSmallBlack90001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBluegray400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray400,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallSemiBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get heebo {
    return copyWith(
      fontFamily: 'Heebo',
    );
  }
}

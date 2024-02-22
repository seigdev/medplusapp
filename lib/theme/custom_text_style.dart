import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBluegray500 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray500,
      );
  static get bodyLargeInterBluegray500 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.blueGray500,
      );
  static get bodyLargeInterff667398 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: Color(0XFF667398),
      );
  static get bodyLargeff2b2a29 => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFF2B2A29),
      );
  static get bodyLargeff667398 => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFF667398),
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumBlueA400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueA400,
      );
  static get bodyMediumBluegray500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray500,
      );
  static get bodyMediumBluegray500_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray500,
      );
  static get bodyMediumBluegray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodyMediumGray400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray400,
      );
  static get bodyMediumGray600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyMediumGray90001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90001,
      );
  static get bodyMediumGray90002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90002,
      );
  static get bodyMediumInter => theme.textTheme.bodyMedium!.inter;
  static get bodyMediumInterBlack900 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumNunitoSansIndigo100 =>
      theme.textTheme.bodyMedium!.nunitoSans.copyWith(
        color: appTheme.indigo100,
      );
  static get bodyMediumOnError => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get bodyMediumOnErrorLight => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onError,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumOnError_1 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyMedium_1 => theme.textTheme.bodyMedium!;
  static get bodyMediumff2b2a29 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF2B2A29),
      );
  static get bodyMediumff3772ff => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF3772FF),
      );
  static get bodyMediumff667398 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF667398),
      );
  static get bodyMediumff828282 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF828282),
      );
  static get bodyMediumffd12b2f => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFFD12B2F),
      );
  static get bodySmallBlueA400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueA400,
      );
  static get bodySmallBluegray300 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray300,
      );
  static get bodySmallBluegray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodySmallBluegray500 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray500,
      );
  static get bodySmallGray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray400,
      );
  static get bodySmallGray600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
      );
  static get bodySmallGray600Light => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallInterBluegray500 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.blueGray500,
        fontSize: 10.fSize,
      );
  static get bodySmallInterGray400 => theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray400,
      );
  static get bodySmallInterOnPrimaryContainer =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodySmallOnPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodySmallPoppinsOnPrimaryContainer =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodySmallff2b2a29 => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFF2B2A29),
      );
  static get bodySmallff3772ff => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFF3772FF),
      );
  static get bodySmallff667398 => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFF667398),
        fontSize: 10.fSize,
      );
  static get bodySmallffd12b2f => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFFD12B2F),
      );
  // Headline text style
  static get headlineLargePrimaryContainer =>
      theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static get headlineLargeffffffff => theme.textTheme.headlineLarge!.copyWith(
        color: Color(0XFFFFFFFF),
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallPrimaryContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallPrimaryContainerSemiBold =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallSemiBold => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
  // Label text style
  static get labelLargeBlueA400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueA400,
      );
  static get labelLargeBluegray40001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray40001,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeBluegray500 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray500,
      );
  static get labelLargeGray900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray900,
      );
  static get labelLargeIndigo100 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.indigo100,
      );
  static get labelLargePrimaryContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSemiBold => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelLargeff2b2a29 => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF2B2A29),
      );
  // Title text style
  static get titleLargeInterBluegray500 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.blueGray500,
        fontWeight: FontWeight.w700,
      );
  static get titleLargePrimaryContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: 22.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMediumBlueA400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueA400,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumInter => theme.textTheme.titleMedium!.inter.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumInterff667398 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: Color(0XFF667398),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOnPrimaryContainerSemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOnPrimaryContainer_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleMediumPoppinsOnPrimaryContainer =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimaryBold => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: 18.fSize,
      );
  static get titleMediumPrimaryContainerBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimaryContainerBold18 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimaryContainerSemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimaryContainer_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static get titleMediumPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumSecondaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 18.fSize,
      );
  static get titleMediumSecondaryContainer_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold_1 => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold_2 => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumff2b2a29 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF2B2A29),
      );
  static get titleMediumff2b2a29SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF2B2A29),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumff667398 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF667398),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumff667398_1 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF667398),
      );
  static get titleMediumffffffff => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFFFFFFFF),
      );
  static get titleSmallAmberA400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.amberA400,
      );
  static get titleSmallBlueA400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueA400,
      );
  static get titleSmallGray90002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90002,
      );
  static get titleSmallGreen500 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.green500,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallOnPrimaryContainer_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallPrimaryContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static get titleSmallPrimaryContainerSemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPrimarySemiBold => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallSemiBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmall_1 => theme.textTheme.titleSmall!;
  static get titleSmallff2b2a29 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF2F1F1F1),
      );
  static get titleSmallffd12b2f => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFFD12B2F),
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get workSans {
    return copyWith(
      fontFamily: 'Work Sans',
    );
  }

  TextStyle get nunitoSans {
    return copyWith(
      fontFamily: 'Nunito Sans',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}

import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue5001,
      );
  static BoxDecoration get fillBlueA => BoxDecoration(
        color: appTheme.blueA400,
      );
  static BoxDecoration get fillBlueA400 => BoxDecoration(
        color: appTheme.blueA400.withOpacity(0.1),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get fillGray50 => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillGray5001 => BoxDecoration(
        color: appTheme.gray5001,
      );
  static BoxDecoration get fillGray5004 => BoxDecoration(
        color: appTheme.gray5004,
      );
  static BoxDecoration get fillGreen => BoxDecoration(
        color: appTheme.green500,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.05),
      );
  static BoxDecoration get fillPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
      );
  static BoxDecoration get fillPrimary1 => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.2),
      );
  static BoxDecoration get fillPrimary2 => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Gradient decorations
  static BoxDecoration get gradientBlueAToBlueA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0.5),
          end: Alignment(1, 0.5),
          colors: [
            appTheme.blueA400,
            appTheme.blueA400.withOpacity(0),
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToBlueA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.03, 0.02),
          end: Alignment(1, 1),
          colors: [
            theme.colorScheme.primary,
            appTheme.blueA400,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray90014,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBluegray300 => BoxDecoration(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        border: Border.all(
          color: appTheme.blueGray300,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBluegray90014 => BoxDecoration(
        color: appTheme.blueA400,
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray90014,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBluegray900141 => BoxDecoration(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray90014,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBluegray900142 => BoxDecoration(
        color: appTheme.gray5003,
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray90014,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        border: Border.all(
          color: appTheme.gray10002,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray90014,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray30001 => BoxDecoration(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        border: Border.all(
          color: appTheme.gray30001,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray90014,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray300011 => BoxDecoration(
        color: appTheme.blue50,
        border: Border.all(
          color: appTheme.gray30001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray300012 => BoxDecoration(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        border: Border.all(
          color: appTheme.gray30001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray300013 => BoxDecoration(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        border: Border.all(
          color: appTheme.gray30001,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray90014,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray5002 => BoxDecoration(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        border: Border.all(
          color: appTheme.gray5002,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray90014,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineIndigo => BoxDecoration(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        border: Border.all(
          color: appTheme.indigo100,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineIndigo100 => BoxDecoration(
        border: Border.all(
          color: appTheme.indigo100,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineIndigo1001 => BoxDecoration(
        border: Border.all(
          color: appTheme.indigo100,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 2.h,
        ),
      );

  // Small decorations
  static BoxDecoration get small => BoxDecoration(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray90014,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              2,
            ),
          ),
        ],
      );

  // White decorations
  static BoxDecoration get white => BoxDecoration(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
}

class BorderRadiusStyle {
  // Custom borders
  static BorderRadius get customBorderLR30 => BorderRadius.horizontal(
        right: Radius.circular(30.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder5 => BorderRadius.circular(
        5.h,
      );

  // Circle borders
  static BorderRadius get circleBorder30 => BorderRadius.circular(
        30.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL10 => BorderRadius.only(
        topRight: Radius.circular(10.h),
        bottomLeft: Radius.circular(10.h),
        bottomRight: Radius.circular(10.h),
      );
  static BorderRadius get customBorderTL10 => BorderRadius.only(
        topLeft: Radius.circular(10.h),
        bottomLeft: Radius.circular(10.h),
        bottomRight: Radius.circular(10.h),
      );
  static BorderRadius get customBorderTL101 => BorderRadius.vertical(
        top: Radius.circular(10.h),
      );

  static BorderRadius get roundedBorder15 => BorderRadius.circular(
        15.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder25 => BorderRadius.circular(
        25.h,
      );
  static BorderRadius get roundedBorder4 => BorderRadius.circular(
        4.h,
      );
  static BorderRadius get roundedBorder7 => BorderRadius.circular(
        7.h,
      );
// Fill decorations
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Outline decorations
  static BoxDecoration get outlineBlueGrayC => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              6,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: theme.colorScheme.onPrimary,
        border: Border.all(
          color: appTheme.gray100,
          width: 1.h,
          strokeAlign: strokeAlignOutside,
        ),
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;

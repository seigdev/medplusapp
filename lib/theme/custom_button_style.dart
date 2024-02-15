import 'package:flutter/material.dart';

import '../core/app_export.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillAmberA => ElevatedButton.styleFrom(
        backgroundColor: appTheme.amberA400.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
  static ButtonStyle get fillBlueA => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueA400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.h),
        ),
      );
  static ButtonStyle get fillBlueATL10 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueA400.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
  static ButtonStyle get fillBlueATL101 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueA400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
  static ButtonStyle get fillGreen => ElevatedButton.styleFrom(
        backgroundColor: appTheme.green500.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
  static ButtonStyle get fillPrimaryContainer => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primaryContainer.withOpacity(1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
  static ButtonStyle get fillPrimaryTL10 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );

  // Outline button style
  static ButtonStyle get outlineBlueGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueA400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              10.h,
            ),
            bottomLeft: Radius.circular(
              10.h,
            ),
            bottomRight: Radius.circular(
              10.h,
            ),
          ),
        ),
        shadowColor: appTheme.blueGray90014,
        elevation: 1,
      );
  static ButtonStyle get outlineGray => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.primaryContainer.withOpacity(1),
        side: BorderSide(
          color: appTheme.gray30001,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
  static ButtonStyle get outlinePrimary => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.primaryContainer.withOpacity(1),
        side: BorderSide(
          color: theme.colorScheme.primary,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
  static ButtonStyle get outlinePrimaryTL10 => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.primaryContainer.withOpacity(1),
        side: BorderSide(
          color: theme.colorScheme.primary.withOpacity(0.15),
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
  static ButtonStyle get outlinePrimaryTL101 => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.primaryContainer.withOpacity(1),
        side: BorderSide(
          color: theme.colorScheme.primary,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}

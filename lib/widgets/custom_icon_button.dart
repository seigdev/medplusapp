import 'package:flutter/material.dart';
import '../core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.blueA400,
                  borderRadius: BorderRadius.circular(17.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get outlineIndigo => BoxDecoration(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        borderRadius: BorderRadius.circular(12.h),
        border: Border.all(
          color: appTheme.indigo100,
          width: 1.h,
        ),
      );
  static BoxDecoration get fillGreen => BoxDecoration(
        color: appTheme.green500.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get outlineIndigoTL15 => BoxDecoration(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        borderRadius: BorderRadius.circular(15.h),
        border: Border.all(
          color: appTheme.indigo100,
          width: 1.h,
        ),
      );
  static BoxDecoration get fillBlueA => BoxDecoration(
        color: appTheme.blueA400.withOpacity(0.1),
        borderRadius: BorderRadius.circular(4.h),
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(4.h),
      );
  static BoxDecoration get fillPurple => BoxDecoration(
        color: appTheme.purple400.withOpacity(0.1),
        borderRadius: BorderRadius.circular(4.h),
      );
  static BoxDecoration get fillGreenTL4 => BoxDecoration(
        color: appTheme.green500.withOpacity(0.1),
        borderRadius: BorderRadius.circular(4.h),
      );
  static BoxDecoration get fillIndigo => BoxDecoration(
        color: appTheme.indigo100.withOpacity(0.1),
        borderRadius: BorderRadius.circular(4.h),
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red50019,
        borderRadius: BorderRadius.circular(4.h),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        borderRadius: BorderRadius.circular(17.h),
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineAmberA => BoxDecoration(
        borderRadius: BorderRadius.circular(17.h),
        border: Border.all(
          color: appTheme.amberA400,
          width: 1.h,
        ),
      );
  static BoxDecoration get fillPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        borderRadius: BorderRadius.circular(4.h),
      );
  static BoxDecoration get fillBlueATL15 => BoxDecoration(
        color: appTheme.blueA400.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15.h),
      );
  static BoxDecoration get fillPrimaryTL15 => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(15.h),
      );
  static BoxDecoration get fillPrimaryTL3 => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(3.h),
      );
}

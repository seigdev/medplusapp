import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';

// ignore: must_be_immutable
class AppbarLeadingImage extends StatelessWidget {
  AppbarLeadingImage({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomImageView(
        onTap: onTap,
        imagePath: imagePath,
        height: 24.adaptSize,
        width: 24.adaptSize,
        color: Colors.black,
        fit: BoxFit.contain,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class AppbarTrailingIconbuttonThree extends StatelessWidget {
  AppbarTrailingIconbuttonThree({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 30.adaptSize,
          width: 30.adaptSize,
          decoration: IconButtonStyleHelper.outlineIndigoTL15,
          child: CustomImageView(
            imagePath: ImageConstant.imgClarityShoppingCartLine,
          ),
        ),
      ),
    );
  }
}

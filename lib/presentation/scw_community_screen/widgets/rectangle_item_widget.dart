import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';

// ignore: must_be_immutable
class RectangleItemWidget extends StatelessWidget {
  const RectangleItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90.h,
      child: CustomImageView(
        imagePath: ImageConstant.imgRectangle5629,
        height: 65.v,
        width: 90.h,
        radius: BorderRadius.circular(
          5.h,
        ),
      ),
    );
  }
}

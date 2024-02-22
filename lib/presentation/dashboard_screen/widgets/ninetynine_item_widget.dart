import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';

// ignore: must_be_immutable
class NinetynineItemWidget extends StatelessWidget {
  const NinetynineItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 75.h,
      child: CustomImageView(
        imagePath: ImageConstant.imgFrame12562,
        height: 70.v,
        width: 75.h,
        radius: BorderRadius.circular(
          15.h,
        ),
      ),
    );
  }
}

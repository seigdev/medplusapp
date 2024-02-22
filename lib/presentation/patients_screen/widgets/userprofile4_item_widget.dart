import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile4ItemWidget extends StatelessWidget {
  const Userprofile4ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse87,
            height: 60.adaptSize,
            width: 60.adaptSize,
            radius: BorderRadius.circular(
              30.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 21.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Ejiro Osarobo",
                  style: CustomTextStyles.titleMediumSemiBold_2,
                ),
                SizedBox(height: 2.v),
                Text(
                  "Female",
                  style: CustomTextStyles.bodyMediumGray600,
                ),
                SizedBox(height: 4.v),
                Text(
                  "12-12-1993",
                  style: CustomTextStyles.bodyMediumGray600,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

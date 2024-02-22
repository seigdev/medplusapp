import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.outlineGray300011.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      width: 226.h,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse540x40,
            height: 40.adaptSize,
            width: 40.adaptSize,
            radius: BorderRadius.circular(
              20.h,
            ),
            margin: EdgeInsets.only(top: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Floyd Miles",
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 3.v),
                Text(
                  "11th Nov, 10am",
                  style: CustomTextStyles.labelLargeGray900,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

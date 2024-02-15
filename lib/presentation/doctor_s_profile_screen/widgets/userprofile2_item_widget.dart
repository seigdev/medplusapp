import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile2ItemWidget extends StatelessWidget {
  const Userprofile2ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillBlueA400.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: 113.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgUserGroupSvgrepoCom,
                height: 16.adaptSize,
                width: 16.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.h),
                child: Text(
                  "Patients",
                  style: CustomTextStyles.bodySmallBlueA400,
                ),
              ),
            ],
          ),
          SizedBox(height: 9.v),
          Text(
            "50+",
            style: theme.textTheme.titleMedium,
          ),
        ],
      ),
    );
  }
}

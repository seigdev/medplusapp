import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class UserprofilelistItemWidget extends StatelessWidget {
  const UserprofilelistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.small.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      width: 149.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 40.adaptSize,
            width: 40.adaptSize,
            padding: EdgeInsets.all(10.h),
            decoration: IconButtonStyleHelper.fillGreen,
            child: CustomImageView(
              imagePath: ImageConstant.imgPillsSvgrepoCom,
            ),
          ),
          SizedBox(height: 13.v),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Alfuzosin ",
                  style: CustomTextStyles.titleSmallff2b2a29,
                ),
                TextSpan(
                  text: "(10mg)",
                  style: CustomTextStyles.bodySmallff667398,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 12.v),
          SizedBox(
            width: 104.h,
            child: Text(
              "2 Pill(s) daily for 7 days",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall!.copyWith(
                height: 1.42,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

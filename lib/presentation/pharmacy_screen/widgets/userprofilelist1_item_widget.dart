import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';

// ignore: must_be_immutable
class Userprofilelist1ItemWidget extends StatelessWidget {
  Userprofilelist1ItemWidget({
    Key? key,
    this.onTapUserProfile,
  }) : super(
          key: key,
        );

  VoidCallback? onTapUserProfile;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 190.h,
      child: GestureDetector(
        onTap: () {
          onTapUserProfile!.call();
        },
        child: Container(
          margin: EdgeInsets.only(bottom: 1.v),
          padding: EdgeInsets.symmetric(
            horizontal: 12.h,
            vertical: 14.v,
          ),
          decoration: AppDecoration.outlineIndigo.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 155.adaptSize,
                width: 155.adaptSize,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle9,
                      height: 155.adaptSize,
                      width: 155.adaptSize,
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: 32.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 4.h,
                          vertical: 2.v,
                        ),
                        decoration: AppDecoration.fillBlueA,
                        child: Text(
                          "15%",
                          style: theme.textTheme.labelMedium,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 19.v),
              SizedBox(
                width: 111.h,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Amatem Softgel (2.5ml)",
                        style: CustomTextStyles.titleSmallff2b2a29,
                      ),
                      TextSpan(
                        text: " ",
                      ),
                      TextSpan(
                        text: "4.5 (23)",
                        style: CustomTextStyles.bodyMediumff3772ff,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 12.v),
              Row(
                children: [
                  Text(
                    "₦ 3,000",
                    style: CustomTextStyles.titleSmallPrimary.copyWith(
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: Text(
                      "₦ 2,600",
                      style: CustomTextStyles.titleSmallPrimary,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';

// ignore: must_be_immutable
class CreditcardlistItemWidget extends StatelessWidget {
  const CreditcardlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 232.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 6.v),
                    padding: EdgeInsets.all(4.h),
                    decoration: AppDecoration.outlinePrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Container(
                      height: 10.adaptSize,
                      width: 10.adaptSize,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary,
                        borderRadius: BorderRadius.circular(
                          5.h,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 19.v,
                    width: 32.h,
                    margin: EdgeInsets.symmetric(vertical: 9.v),
                    decoration: AppDecoration.white.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder4,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgUser,
                      height: 19.v,
                      width: 32.h,
                      radius: BorderRadius.circular(
                        4.h,
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "**** **** **** 4256",
                        style: theme.textTheme.titleSmall,
                      ),
                      SizedBox(height: 5.v),
                      Text(
                        "Expires 02/24 ",
                        style: CustomTextStyles.labelLargeBluegray500,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgEpDelete,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(
                top: 7.v,
                bottom: 6.v,
              ),
            ),
          ],
        ),
        SizedBox(height: 27.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 249.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgContrast,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(
                      top: 7.v,
                      bottom: 6.v,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgVector,
                    height: 16.v,
                    width: 52.h,
                    margin: EdgeInsets.symmetric(vertical: 10.v),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "**** **** **** 1254",
                        style: theme.textTheme.titleSmall,
                      ),
                      SizedBox(height: 5.v),
                      Text(
                        "Expires 01/25",
                        style: CustomTextStyles.labelLargeBluegray500,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgEpDelete,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(
                top: 7.v,
                bottom: 6.v,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

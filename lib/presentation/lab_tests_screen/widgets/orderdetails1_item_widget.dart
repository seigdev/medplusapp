import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/custom_elevated_button.dart';
import 'package:medplusapp/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Orderdetails1ItemWidget extends StatelessWidget {
  const Orderdetails1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 14.h,
          vertical: 11.v,
        ),
        decoration: AppDecoration.outlineGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5.v),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 3.v),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Order ID: 166523",
                          style: theme.textTheme.titleSmall,
                        ),
                        Text(
                          "23/10/2022 | 9:00 AM",
                          style: CustomTextStyles.bodySmallGray400,
                        ),
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgIcBaselineMoreHorizGray900,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(left: 22.h),
                ),
              ],
            ),
            SizedBox(height: 10.v),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 3.v),
                  child: CustomIconButton(
                    height: 35.adaptSize,
                    width: 35.adaptSize,
                    padding: EdgeInsets.all(7.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgLabFlaskSvgrepoCom,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.h),
                  child: Column(
                    children: [
                      Text(
                        "Blood count (Haematology)",
                        style: theme.textTheme.bodyMedium,
                      ),
                      SizedBox(height: 4.v),
                      Text(
                        "Funbell Diagnostics Centre",
                        style: CustomTextStyles.bodyMediumBluegray500,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.v),
            Padding(
              padding: EdgeInsets.only(right: 5.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 60.h,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Amount\n",
                            style: CustomTextStyles.bodyMediumff828282,
                          ),
                          TextSpan(
                            text: "₦ 7,000",
                            style: CustomTextStyles.titleMediumff2b2a29SemiBold,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  CustomElevatedButton(
                    height: 34.v,
                    width: 111.h,
                    text: "In-Progress",
                    margin: EdgeInsets.only(
                      left: 181.h,
                      bottom: 5.v,
                    ),
                    buttonStyle: CustomButtonStyles.fillBlueATL10,
                    buttonTextStyle: CustomTextStyles.titleSmallBlueA400,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

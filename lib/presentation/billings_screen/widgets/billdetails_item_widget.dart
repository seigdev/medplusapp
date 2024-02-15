import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/custom_elevated_button.dart';
import 'package:medplusapp/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class BilldetailsItemWidget extends StatelessWidget {
  const BilldetailsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 11.v),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 9.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Bill ID: 166523",
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 14.v),
                SizedBox(
                  width: 155.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 1.v,
                          bottom: 2.v,
                        ),
                        child: CustomIconButton(
                          height: 35.adaptSize,
                          width: 35.adaptSize,
                          padding: EdgeInsets.all(9.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgPairOfBillsSvgrepoCom,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Ejiro Osarobo",
                            style: theme.textTheme.bodyLarge,
                          ),
                          SizedBox(height: 3.v),
                          Text(
                            "Female",
                            style: CustomTextStyles.bodyMediumGray600,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 14.v),
                SizedBox(
                  width: 63.h,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Amount\n",
                          style: CustomTextStyles.bodyMediumff828282,
                        ),
                        TextSpan(
                          text: "₦10,000",
                          style: CustomTextStyles.titleMediumff2b2a29SemiBold,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.v),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 5.v,
                        bottom: 3.v,
                      ),
                      child: Text(
                        "23/10/2022 | 9:00 AM",
                        style: CustomTextStyles.bodySmallGray400,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgIcBaselineMoreHorizGray900,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(left: 25.h),
                    ),
                  ],
                ),
                SizedBox(height: 65.v),
                CustomElevatedButton(
                  height: 34.v,
                  width: 82.h,
                  text: "Settled",
                  buttonStyle: CustomButtonStyles.fillGreen,
                  buttonTextStyle: CustomTextStyles.titleSmallGreen500,
                  alignment: Alignment.centerRight,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

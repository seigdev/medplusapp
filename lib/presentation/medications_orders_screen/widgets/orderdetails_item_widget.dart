import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/custom_elevated_button.dart';
import 'package:medplusapp/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class OrderdetailsItemWidget extends StatelessWidget {
  const OrderdetailsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
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
              Padding(
                padding: EdgeInsets.symmetric(vertical: 3.v),
                child: Text(
                  "Order ID: 166523",
                  style: theme.textTheme.titleSmall,
                ),
              ),
              Spacer(),
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
                    imagePath: ImageConstant.imgPillsPillSvgrepoCom,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Panadol Extra (500mg) x1,",
                      style: theme.textTheme.bodyMedium,
                    ),
                    SizedBox(height: 4.v),
                    Text(
                      "Prostan Eyedrop (300ml) x2,",
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 16.v),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 55.h,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Amount\n",
                        style: CustomTextStyles.bodyMediumff828282,
                      ),
                      TextSpan(
                        text: "N3,000",
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
                  left: 185.h,
                  bottom: 5.v,
                ),
                buttonStyle: CustomButtonStyles.fillBlueATL10,
                buttonTextStyle: CustomTextStyles.titleSmallBlueA400,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

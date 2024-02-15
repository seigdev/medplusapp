import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile5ItemWidget extends StatelessWidget {
  const Userprofile5ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.small.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 160.h,
                margin: EdgeInsets.only(top: 1.v),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse61,
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      radius: BorderRadius.circular(
                        20.h,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ejiro Osarobo",
                          style: theme.textTheme.titleMedium,
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
              CustomImageView(
                imagePath: ImageConstant.imgIcBaselineMoreHorizGray900,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(bottom: 17.v),
              ),
            ],
          ),
          SizedBox(height: 28.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 1.v),
                child: Text(
                  "11 Nov, 2022 - 10:00am",
                  style: theme.textTheme.titleSmall,
                ),
              ),
              Text(
                "15 mins",
                style: theme.textTheme.titleSmall,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ProductcardlistItemWidget extends StatelessWidget {
  const ProductcardlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgRectangle9315x428,
          height: 100.adaptSize,
          width: 100.adaptSize,
          radius: BorderRadius.circular(
            5.h,
          ),
          margin: EdgeInsets.only(bottom: 15.v),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 2.v,
            bottom: 15.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Prostan Eye Drops (2.5ml)",
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 9.v),
              Text(
                "₦ 2,600",
                style: CustomTextStyles.titleSmallPrimary,
              ),
              SizedBox(height: 18.v),
              SizedBox(
                width: 270.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 98.h,
                      decoration: AppDecoration.outlineGray300012.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder7,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomIconButton(
                            height: 31.v,
                            width: 24.h,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgAkarIconsMinus,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 7.v),
                            child: Text(
                              "1",
                              style: CustomTextStyles.titleSmallSemiBold,
                            ),
                          ),
                          CustomIconButton(
                            height: 32.v,
                            width: 23.h,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgAkarIconsPlusGray900,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomIconButton(
                      height: 32.adaptSize,
                      width: 32.adaptSize,
                      padding: EdgeInsets.all(6.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgPhTrashLight,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

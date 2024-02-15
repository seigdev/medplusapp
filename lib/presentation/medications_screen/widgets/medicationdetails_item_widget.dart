import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class MedicationdetailsItemWidget extends StatelessWidget {
  const MedicationdetailsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 9.v),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 10.v,
              bottom: 7.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgMedicinesSvgrepoCom,
                      height: 45.adaptSize,
                      width: 45.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20.h,
                        top: 2.v,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Panadol",
                            style: CustomTextStyles.titleMediumSemiBold_2,
                          ),
                          SizedBox(height: 5.v),
                          Text(
                            "Tablet (10mg)",
                            style: CustomTextStyles.bodyMediumGray600,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15.v),
                SizedBox(
                  width: 254.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 9.h,
                          vertical: 7.v,
                        ),
                        decoration: AppDecoration.outlineIndigo100.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 1.v),
                            Text(
                              "Dosage",
                              style: CustomTextStyles.bodySmallBluegray500,
                            ),
                            SizedBox(height: 2.v),
                            Text(
                              "2 Tablets",
                              style: theme.textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 9.h,
                          vertical: 7.v,
                        ),
                        decoration: AppDecoration.outlineIndigo100.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 1.v),
                            Text(
                              "Frequency",
                              style: CustomTextStyles.bodySmallBluegray500,
                            ),
                            SizedBox(height: 3.v),
                            Text(
                              "2:2:2",
                              style: theme.textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 9.h,
                          vertical: 5.v,
                        ),
                        decoration: AppDecoration.outlineIndigo100.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 1.v),
                            Text(
                              "Duration",
                              style: CustomTextStyles.bodySmallBluegray500,
                            ),
                            SizedBox(height: 6.v),
                            Text(
                              "10 Days",
                              style: theme.textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 7.v),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgIcBaselineMoreHorizGray900,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.centerRight,
                ),
                SizedBox(height: 65.v),
                CustomElevatedButton(
                  height: 34.v,
                  width: 75.h,
                  text: "Active",
                  buttonStyle: CustomButtonStyles.fillGreen,
                  buttonTextStyle: CustomTextStyles.titleSmallGreen500,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

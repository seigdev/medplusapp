import 'frame3_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile3ItemWidget extends StatelessWidget {
  const Userprofile3ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 10.v),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle133,
                        height: 60.adaptSize,
                        width: 60.adaptSize,
                        radius: BorderRadius.circular(
                          10.h,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.v),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dr. Rashida Mohammed",
                              style: CustomTextStyles.titleMediumSemiBold_2,
                            ),
                            SizedBox(height: 6.v),
                            Text(
                              "Haematologist",
                              style: CustomTextStyles.bodyMediumGray600,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgIcBaselineMoreHorizGray900,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(
                  left: 66.h,
                  bottom: 46.v,
                ),
              ),
            ],
          ),
          SizedBox(height: 15.v),
          Wrap(
            runSpacing: 10.v,
            spacing: 10.h,
            children: List<Widget>.generate(3, (index) => Frame3ItemWidget()),
          ),
          SizedBox(height: 4.v),
        ],
      ),
    );
  }
}

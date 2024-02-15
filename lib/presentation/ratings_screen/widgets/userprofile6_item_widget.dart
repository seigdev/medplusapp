import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class Userprofile6ItemWidget extends StatelessWidget {
  const Userprofile6ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 117.v,
      width: 390.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 1.v),
              decoration: AppDecoration.fillGray5004,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse1,
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        radius: BorderRadius.circular(
                          20.h,
                        ),
                        margin: EdgeInsets.only(bottom: 1.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 14.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Bassey Okon",
                              style: CustomTextStyles.bodyMediumInterBlack900,
                            ),
                            SizedBox(height: 3.v),
                            CustomRatingBar(
                              ignoreGestures: true,
                              initialRating: 0,
                              itemSize: 20,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 13.v),
                  Container(
                    width: 384.h,
                    margin: EdgeInsets.only(right: 5.h),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nam nulla ut elit lacinia consequat pellentesque morbi.",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallInterOnPrimaryContainer
                          .copyWith(
                        height: 1.67,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.v),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              "22/08/2022",
              style: CustomTextStyles.bodySmallInterBluegray500,
            ),
          ),
        ],
      ),
    );
  }
}

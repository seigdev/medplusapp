import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';

// ignore: must_be_immutable
class CardcomponentItemWidget extends StatelessWidget {
  CardcomponentItemWidget({
    Key? key,
    this.onTapCardComponent,
  }) : super(
          key: key,
        );

  VoidCallback? onTapCardComponent;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 326.h,
      child: GestureDetector(
        onTap: () {
          onTapCardComponent!.call();
        },
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.all(0),
          color: theme.colorScheme.primaryContainer.withOpacity(1),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: appTheme.gray5002,
              width: 1.h,
            ),
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Container(
            height: 199.v,
            width: 326.h,
            padding: EdgeInsets.symmetric(
              horizontal: 14.h,
              vertical: 13.v,
            ),
            decoration: AppDecoration.outlineGray5002.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 290.h,
                    margin: EdgeInsets.only(bottom: 48.v),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. est vitae a dictum Ut  aliqu amet, interdum lectus vitae ut...",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumOnPrimaryContainer
                          .copyWith(
                        height: 1.43,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(right: 99.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Non eu sit amet euismod",
                          style: CustomTextStyles.titleMediumOnPrimaryContainer,
                        ),
                        SizedBox(height: 10.v),
                        Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgEllipse13,
                              height: 20.adaptSize,
                              width: 20.adaptSize,
                              radius: BorderRadius.circular(
                                10.h,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10.h,
                                top: 3.v,
                                bottom: 2.v,
                              ),
                              child: Text(
                                "By Sussexmama",
                                style: CustomTextStyles.bodySmallGray600,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 80.v),
                        Text(
                          "28 minutes ago",
                          style: CustomTextStyles.bodySmallGray600,
                        ),
                        SizedBox(height: 9.v),
                        Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgFaSolidComment,
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 6.h),
                              child: Text(
                                "2",
                                style: CustomTextStyles
                                    .bodySmallOnPrimaryContainer,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgLoveLikeSvgrepoCom,
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                              margin: EdgeInsets.only(left: 10.h),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 6.h),
                              child: Text(
                                "5",
                                style: CustomTextStyles
                                    .bodySmallOnPrimaryContainer,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

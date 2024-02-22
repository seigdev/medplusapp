import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';

// ignore: must_be_immutable
class NewoneItemWidget extends StatelessWidget {
  const NewoneItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: theme.colorScheme.primaryContainer.withOpacity(1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Container(
        height: 71.v,
        width: 390.h,
        padding: EdgeInsets.symmetric(
          horizontal: 4.h,
          vertical: 2.v,
        ),
        decoration: AppDecoration.white.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(right: 2.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Appointment Confirmation",
                      style: CustomTextStyles.titleSmallSemiBold,
                    ),
                    SizedBox(height: 4.v),
                    SizedBox(
                      width: 379.h,
                      child: Text(
                        "Your appointment with Dr. Rashida has been confirmed suceessfully.",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMediumGray90001.copyWith(
                          height: 1.43,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(top: 4.v),
                child: Text(
                  "8 minutes ago",
                  style: CustomTextStyles.bodySmallGray600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

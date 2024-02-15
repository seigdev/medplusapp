import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/custom_elevated_button.dart';

class SuccessfulScreen extends StatelessWidget {
  const SuccessfulScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 17.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCelebrationRafiki,
                height: 388.v,
                width: 386.h,
              ),
              SizedBox(height: 40.v),
              Text(
                "Successful!",
                style: CustomTextStyles.headlineSmallSemiBold,
              ),
              SizedBox(height: 17.v),
              SizedBox(
                width: 224.h,
                child: Text(
                  "You have successfully reset your password",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    height: 1.64,
                  ),
                ),
              ),
              SizedBox(height: 39.v),
              CustomElevatedButton(
                text: "Sign In",
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}

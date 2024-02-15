import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:medplusapp/widgets/app_bar/appbar_title.dart';
import 'package:medplusapp/widgets/app_bar/custom_app_bar.dart';
import 'package:medplusapp/widgets/custom_elevated_button.dart';
import 'package:medplusapp/widgets/custom_pin_code_text_field.dart';

class OtpAuthenticationScreen extends StatelessWidget {
  const OtpAuthenticationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 16.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          width: 368.h,
                          margin: EdgeInsets.only(left: 2.h, right: 23.h),
                          child: Text(
                              "An authentication code has been sent to  **** **** 390",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyLarge!
                                  .copyWith(height: 1.25)))),
                  SizedBox(height: 49.v),
                  Padding(
                      padding: EdgeInsets.only(left: 24.h, right: 23.h),
                      child: CustomPinCodeTextField(
                          context: context, onChanged: (value) {})),
                  SizedBox(height: 90.v),
                  CustomElevatedButton(text: "Verify"),
                  SizedBox(height: 20.v),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "Didn’t get the code? ",
                            style: CustomTextStyles.bodyMediumff2b2a29),
                        TextSpan(
                            text: "Resend",
                            style: CustomTextStyles.titleSmallffd12b2f)
                      ]),
                      textAlign: TextAlign.left),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 72.v,
        leadingWidth: 43.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlack900,
            margin: EdgeInsets.only(left: 19.h, top: 16.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "OTP Authentication"));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

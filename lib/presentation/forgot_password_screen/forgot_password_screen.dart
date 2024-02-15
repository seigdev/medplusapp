import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:medplusapp/widgets/app_bar/appbar_title.dart';
import 'package:medplusapp/widgets/app_bar/custom_app_bar.dart';
import 'package:medplusapp/widgets/custom_elevated_button.dart';
import 'package:medplusapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 20.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          width: 370.h,
                          margin: EdgeInsets.only(left: 4.h, right: 23.h),
                          child: Text(
                              "Don’t worry! It happens. Please enter the email address associated with your account.",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyLarge!
                                  .copyWith(height: 1.44)))),
                  SizedBox(height: 33.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("Email",
                              style: theme.textTheme.titleMedium))),
                  SizedBox(height: 10.v),
                  CustomTextFormField(
                      controller: emailController,
                      hintText: "Enter",
                      textInputAction: TextInputAction.done),
                  SizedBox(height: 75.v),
                  CustomElevatedButton(text: "Submit"),
                  SizedBox(height: 25.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgArrowLeft,
                        height: 20.adaptSize,
                        width: 20.adaptSize),
                    Padding(
                        padding: EdgeInsets.only(left: 10.h, top: 3.v),
                        child: Text("Back to Sign In",
                            style: theme.textTheme.bodySmall))
                  ]),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 74.v,
        leadingWidth: 43.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlack900,
            margin: EdgeInsets.only(left: 19.h, top: 14.v, bottom: 17.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Forgot Password?"));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

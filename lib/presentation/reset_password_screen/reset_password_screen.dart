import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:medplusapp/widgets/app_bar/appbar_title.dart';
import 'package:medplusapp/widgets/app_bar/custom_app_bar.dart';
import 'package:medplusapp/widgets/custom_elevated_button.dart';
import 'package:medplusapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreen({Key? key}) : super(key: key);

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 15.h, vertical: 22.v),
                            child: Column(children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 4.h),
                                      child: Text(
                                          "Please reset your password below",
                                          style: theme.textTheme.bodyLarge))),
                              SizedBox(height: 33.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 4.h),
                                      child: Text("Password",
                                          style: theme.textTheme.titleMedium))),
                              SizedBox(height: 10.v),
                              CustomTextFormField(
                                  controller: passwordController,
                                  hintText: "Enter",
                                  textInputType: TextInputType.visiblePassword,
                                  suffix: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          30.h, 9.v, 13.h, 9.v),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4.h)),
                                      child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgIconBlueGray40002,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize)),
                                  suffixConstraints:
                                      BoxConstraints(maxHeight: 42.v),
                                  obscureText: true,
                                  contentPadding: EdgeInsets.only(
                                      left: 20.h, top: 12.v, bottom: 12.v)),
                              SizedBox(height: 19.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 4.h),
                                      child: Text("Confirm Password",
                                          style: theme.textTheme.titleMedium))),
                              SizedBox(height: 10.v),
                              CustomTextFormField(
                                  controller: confirmpasswordController,
                                  hintText: "Enter",
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.visiblePassword,
                                  suffix: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          30.h, 9.v, 13.h, 9.v),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4.h)),
                                      child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgIconBlueGray40002,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize)),
                                  suffixConstraints:
                                      BoxConstraints(maxHeight: 42.v),
                                  obscureText: true,
                                  contentPadding: EdgeInsets.only(
                                      left: 20.h, top: 12.v, bottom: 12.v)),
                              SizedBox(height: 75.v),
                              CustomElevatedButton(text: "Submit"),
                              SizedBox(height: 25.v),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgArrowLeft,
                                        height: 20.adaptSize,
                                        width: 20.adaptSize),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 10.h, top: 3.v),
                                        child: Text("Back to Sign In",
                                            style: theme.textTheme.bodySmall))
                                  ]),
                              SizedBox(height: 5.v)
                            ])))))));
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
        title: AppbarTitle(text: "Reset Password"));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

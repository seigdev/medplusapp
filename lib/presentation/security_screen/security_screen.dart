import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:medplusapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:medplusapp/widgets/app_bar/custom_app_bar.dart';
import 'package:medplusapp/widgets/custom_icon_button.dart';
import 'package:medplusapp/widgets/custom_outlined_button.dart';
import 'package:medplusapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SecurityScreen extends StatelessWidget {
  SecurityScreen({Key? key}) : super(key: key);

  TextEditingController passwordController = TextEditingController();

  TextEditingController newpasswordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            horizontal: 19.h, vertical: 21.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildDiv(context,
                                  twoFactorAuthentication: "Password"),
                              SizedBox(height: 29.v),
                              Text("Update your password",
                                  style: theme.textTheme.bodyMedium),
                              SizedBox(height: 15.v),
                              Text("Current Password",
                                  style: theme.textTheme.titleMedium),
                              SizedBox(height: 10.v),
                              _buildPassword(context),
                              SizedBox(height: 14.v),
                              Text("New Password",
                                  style: theme.textTheme.titleMedium),
                              SizedBox(height: 10.v),
                              _buildNewpassword(context),
                              SizedBox(height: 14.v),
                              Text("Confirm Password",
                                  style: theme.textTheme.titleMedium),
                              SizedBox(height: 10.v),
                              _buildConfirmpassword(context),
                              SizedBox(height: 24.v),
                              _buildSave(context),
                              SizedBox(height: 24.v),
                              Divider(),
                              SizedBox(height: 24.v),
                              _buildDiv(context,
                                  twoFactorAuthentication:
                                      "Two Factor Authentication"),
                              SizedBox(height: 25.v),
                              Divider(),
                              SizedBox(height: 24.v),
                              _buildDiv(context,
                                  twoFactorAuthentication:
                                      "Deactivate Account"),
                              SizedBox(height: 5.v)
                            ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 43.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 19.h, top: 40.v, bottom: 19.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarSubtitle(
            text: "Security",
            margin: EdgeInsets.only(left: 35.h, top: 39.v, bottom: 14.v)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
        controller: passwordController,
        hintText: "Enter",
        textInputType: TextInputType.visiblePassword,
        suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 11.v, 9.h, 11.v),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.h)),
            child: CustomImageView(
                imagePath: ImageConstant.imgIconBlueGray40002,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 46.v),
        obscureText: true,
        contentPadding: EdgeInsets.only(left: 20.h, top: 14.v, bottom: 14.v));
  }

  /// Section Widget
  Widget _buildNewpassword(BuildContext context) {
    return CustomTextFormField(
        controller: newpasswordController,
        hintText: "Enter",
        textInputType: TextInputType.visiblePassword,
        suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 11.v, 9.h, 11.v),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.h)),
            child: CustomImageView(
                imagePath: ImageConstant.imgIconBlueGray40002,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 46.v),
        obscureText: true,
        contentPadding: EdgeInsets.only(left: 20.h, top: 14.v, bottom: 14.v));
  }

  /// Section Widget
  Widget _buildConfirmpassword(BuildContext context) {
    return CustomTextFormField(
        controller: confirmpasswordController,
        hintText: "Enter",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 11.v, 9.h, 11.v),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.h)),
            child: CustomImageView(
                imagePath: ImageConstant.imgIconBlueGray40002,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 46.v),
        obscureText: true,
        contentPadding: EdgeInsets.only(left: 20.h, top: 14.v, bottom: 14.v));
  }

  /// Section Widget
  Widget _buildSave(BuildContext context) {
    return CustomOutlinedButton(
        width: 115.h,
        text: "Save",
        buttonStyle: CustomButtonStyles.outlinePrimary);
  }

  /// Common widget
  Widget _buildDiv(
    BuildContext context, {
    required String twoFactorAuthentication,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(twoFactorAuthentication,
              style: CustomTextStyles.titleMedium18
                  .copyWith(color: appTheme.gray900))),
      CustomIconButton(
          height: 24.adaptSize,
          width: 24.adaptSize,
          padding: EdgeInsets.all(7.h),
          decoration: IconButtonStyleHelper.fillPrimaryContainer,
          child: CustomImageView(imagePath: ImageConstant.imgIcon))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

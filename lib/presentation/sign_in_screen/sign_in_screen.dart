import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/presentation/create_account_patient_tab_container_screen/create_account_patient_tab_container_screen.dart';
import 'package:medplusapp/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:medplusapp/presentation/sign_in_screen/provider/sign_in_provider.dart';
import 'package:medplusapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:medplusapp/widgets/app_bar/appbar_title.dart';
import 'package:medplusapp/widgets/app_bar/custom_app_bar.dart';
import 'package:medplusapp/widgets/custom_elevated_button.dart';
import 'package:medplusapp/widgets/custom_text_form_field.dart';

import '../../widgets/app_bar/appbar_subtitle.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends ConsumerStatefulWidget {
  const SignInScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignInScreenState();
}

class _SignInScreenState extends ConsumerState<SignInScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

// topmostd@gmail.com
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: appTheme.whiteA700,
      appBar: CustomAppBar(
          leadingWidth: (43),
          leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgArrowLeft,
              margin: EdgeInsets.only(left: 19, top: 15, bottom: 15),
              onTap: () {
                onTapArrowleftone();
              }),
          centerTitle: true,
          title: AppbarSubtitle(
            text: "sign in",
          )),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 3.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text("Welcome back!",
                        style: theme.textTheme.bodyLarge)),
                SizedBox(height: 35.v),
                Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text("Email", style: theme.textTheme.titleMedium)),
                SizedBox(height: 10.v),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: CustomTextFormField(
                    controller: emailController,
                    hintText: "Enter Email",
                  ),
                ),
                SizedBox(height: 19.v),
                Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child:
                        Text("Password", style: theme.textTheme.titleMedium)),
                SizedBox(height: 10.v),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: CustomTextFormField(
                    controller: passwordController,
                    hintText: "Enter Password",
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.visiblePassword,
                    suffix: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 9.v, 13.h, 9.v),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.h)),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgIconBlueGray40002,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ),
                    suffixConstraints: BoxConstraints(maxHeight: 42.v),
                    obscureText: true,
                    contentPadding:
                        EdgeInsets.only(left: 20.h, top: 12.v, bottom: 12.v),
                  ),
                ),
                SizedBox(height: 10.v),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgotPasswordScreen()));
                  },
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text("Forgot Password?",
                        style: CustomTextStyles.bodySmallBluegray300),
                  ),
                ),
                SizedBox(height: 65.v),
                CustomElevatedButton(
                  text: "Sign In",
                  margin: EdgeInsets.only(left: 4.h),
                  onPressed: () {
                    // EXECUTE USER LOGIN.
                    FocusScope.of(context).unfocus();
                    ref.read(userLoginProvider(
                        emailController.text, passwordController.text));
                  },
                ),
                SizedBox(height: 20.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: "Don’t have an account? ",
                            style: CustomTextStyles.bodyMediumff2b2a29,
                          ),
                        ]),
                        textAlign: TextAlign.left),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    CreateAccountPatientTabContainerScreen()));
                      },
                      child: Text("Sign Up",
                          style: CustomTextStyles.bodyMediumffd12b2f),
                    ),
                  ],
                ),
                SizedBox(height: 5.v)
              ],
            ),
          ),
        ),
      ),
    );
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
      title: AppbarTitle(text: "Sign In"),
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapArrowleftone() {
    Get.back();
  }
}

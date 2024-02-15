import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:medplusapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:medplusapp/widgets/app_bar/appbar_trailing_iconbutton_three.dart';
import 'package:medplusapp/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:medplusapp/widgets/app_bar/custom_app_bar.dart';
import 'package:medplusapp/widgets/custom_icon_button.dart';

class AccountSettingsScreen extends StatelessWidget {
  const AccountSettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 57.v),
        child: Column(
          children: [
            _buildPersonalProfileFrame(context),
            SizedBox(height: 30.v),
            _buildHealthProfileFrame(context),
            SizedBox(height: 30.v),
            _buildWalletFrame(context),
            SizedBox(height: 30.v),
            _buildSecurityFrame(context),
            Spacer(flex: 27),
            _buildTermsOfServiceFrame(context),
            SizedBox(height: 30.v),
            _buildSignOutFrame(context),
            Spacer(flex: 72)
          ],
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 82.v,
        leadingWidth: 43.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgGgMenuLeft,
            margin: EdgeInsets.only(left: 19.h, top: 15.v, bottom: 16.v)),
        title: AppbarSubtitle(
            text: "Account Settings", margin: EdgeInsets.only(left: 35.h)),
        actions: [
          AppbarTrailingIconbuttonTwo(
              imagePath: ImageConstant.imgIcBaselineNot,
              margin: EdgeInsets.only(left: 19.h, top: 12.v, right: 13.h)),
          AppbarTrailingIconbuttonThree(
              imagePath: ImageConstant.imgClarityShoppingCartLine,
              margin: EdgeInsets.only(left: 10.h, top: 12.v, right: 32.h))
        ]);
  }

  /// Section Widget
  Widget _buildPersonalProfileFrame(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapPersonalProfileFrame(context);
        },
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            CustomIconButton(
                height: 30.adaptSize,
                width: 30.adaptSize,
                padding: EdgeInsets.all(5.h),
                decoration: IconButtonStyleHelper.fillBlueA,
                child: CustomImageView(imagePath: ImageConstant.imgLock)),
            Padding(
                padding: EdgeInsets.only(left: 20.h, top: 5.v, bottom: 5.v),
                child: Text("Personal Profile",
                    style: theme.textTheme.titleMedium))
          ]),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 30.adaptSize,
              width: 30.adaptSize)
        ]));
  }

  /// Section Widget
  Widget _buildHealthProfileFrame(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapHealthProfileFrame(context);
        },
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          SizedBox(
              width: 158.h,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomIconButton(
                        height: 30.adaptSize,
                        width: 30.adaptSize,
                        padding: EdgeInsets.all(7.h),
                        decoration: IconButtonStyleHelper.fillPrimary,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgRiHealthBookLine)),
                    Padding(
                        padding: EdgeInsets.symmetric(vertical: 5.v),
                        child: Text("Health Profile",
                            style: theme.textTheme.titleMedium))
                  ])),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 30.adaptSize,
              width: 30.adaptSize)
        ]));
  }

  /// Section Widget
  Widget _buildWalletFrame(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      SizedBox(
          width: 100.h,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            CustomIconButton(
                height: 30.adaptSize,
                width: 30.adaptSize,
                padding: EdgeInsets.all(7.h),
                decoration: IconButtonStyleHelper.fillPurple,
                child:
                    CustomImageView(imagePath: ImageConstant.imgFluentWalletC)),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 5.v),
                child: Text("Wallet", style: theme.textTheme.titleMedium))
          ])),
      CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 30.adaptSize,
          width: 30.adaptSize)
    ]);
  }

  /// Section Widget
  Widget _buildSecurityFrame(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapSecurityFrame(context);
        },
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          SizedBox(
              width: 115.h,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomIconButton(
                        height: 30.adaptSize,
                        width: 30.adaptSize,
                        padding: EdgeInsets.all(7.h),
                        decoration: IconButtonStyleHelper.fillGreenTL4,
                        child: CustomImageView(
                            imagePath:
                                ImageConstant.imgCarbonSecurityServices)),
                    Padding(
                        padding: EdgeInsets.only(top: 6.v, bottom: 4.v),
                        child: Text("Security",
                            style: theme.textTheme.titleMedium))
                  ])),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 30.adaptSize,
              width: 30.adaptSize)
        ]));
  }

  /// Section Widget
  Widget _buildTermsOfServiceFrame(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        CustomIconButton(
            height: 30.adaptSize,
            width: 30.adaptSize,
            padding: EdgeInsets.all(7.h),
            decoration: IconButtonStyleHelper.fillIndigo,
            child: CustomImageView(imagePath: ImageConstant.imgTelevision)),
        Padding(
            padding: EdgeInsets.only(left: 20.h, top: 5.v, bottom: 5.v),
            child: Text("Terms of Service", style: theme.textTheme.titleMedium))
      ]),
      CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 30.adaptSize,
          width: 30.adaptSize)
    ]);
  }

  /// Section Widget
  Widget _buildSignOutFrame(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      SizedBox(
          width: 117.h,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            CustomIconButton(
                height: 30.adaptSize,
                width: 30.adaptSize,
                padding: EdgeInsets.all(7.h),
                decoration: IconButtonStyleHelper.fillRed,
                child: CustomImageView(
                    imagePath: ImageConstant.imgLogOutSvgrepoCom)),
            Padding(
                padding: EdgeInsets.only(top: 6.v, bottom: 4.v),
                child: Text("Sign Out", style: theme.textTheme.titleMedium))
          ])),
      CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 30.adaptSize,
          width: 30.adaptSize)
    ]);
  }

  /// Navigates to the personalProfileOneScreen when the action is triggered.
  onTapPersonalProfileFrame(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.personalProfileOneScreen);
  }

  /// Navigates to the healthProfileScreen when the action is triggered.
  onTapHealthProfileFrame(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.healthProfileScreen);
  }

  /// Navigates to the securityScreen when the action is triggered.
  onTapSecurityFrame(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.securityScreen);
  }
}

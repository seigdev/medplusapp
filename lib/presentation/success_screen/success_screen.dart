import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:medplusapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:medplusapp/widgets/app_bar/custom_app_bar.dart';
import 'package:medplusapp/widgets/custom_elevated_button.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 20.v),
                child: Column(children: [
                  _buildFrame(context),
                  Spacer(flex: 35),
                  _buildBlock(context),
                  Spacer(flex: 64)
                ]))));
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
            text: "Checkout", margin: EdgeInsets.only(left: 35.h)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 17.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
              width: 228.h,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgTeenyiconsTickCircleSolid,
                    height: 24.adaptSize,
                    width: 24.adaptSize),
                Padding(
                    padding: EdgeInsets.only(left: 5.h, top: 4.v, bottom: 2.v),
                    child: Text("Shipping", style: theme.textTheme.titleSmall)),
                Padding(
                    padding: EdgeInsets.only(top: 12.v, bottom: 11.v),
                    child: SizedBox(
                        width: 35.h,
                        child: Divider(color: appTheme.gray400, indent: 15.h))),
                CustomImageView(
                    imagePath: ImageConstant.imgTeenyiconsTickCircleSolid,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(left: 15.h)),
                Padding(
                    padding: EdgeInsets.only(left: 5.h, top: 5.v),
                    child: Text("Payment", style: theme.textTheme.titleSmall))
              ])),
          Padding(
              padding: EdgeInsets.only(top: 12.v, bottom: 11.v),
              child: SizedBox(
                  width: 35.h,
                  child: Divider(color: appTheme.gray400, indent: 15.h))),
          CustomImageView(
              imagePath: ImageConstant.imgTeenyiconsTickCircleSolid,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(left: 15.h)),
          Padding(
              padding: EdgeInsets.only(left: 5.h, top: 3.v, bottom: 3.v),
              child: Text("Review", style: theme.textTheme.titleSmall))
        ]));
  }

  /// Section Widget
  Widget _buildBlock(BuildContext context) {
    return Container(
        decoration: AppDecoration.white
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          CustomImageView(
              imagePath: ImageConstant.imgTeenyiconsTickCircleSolid,
              height: 40.adaptSize,
              width: 40.adaptSize),
          SizedBox(height: 16.v),
          Text("Successful", style: CustomTextStyles.headlineSmallSemiBold),
          SizedBox(height: 21.v),
          Container(
              width: 359.h,
              margin: EdgeInsets.only(left: 14.h, right: 15.h),
              child: Text(
                  "Your payment has been received and you should get notifications about the status of your order soon.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium!.copyWith(height: 1.71))),
          SizedBox(height: 46.v),
          CustomElevatedButton(
              height: 52.v,
              text: "Go Back Home",
              onPressed: () {
                onTapGoBackHome(context);
              })
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the pharmacyScreen when the action is triggered.
  onTapGoBackHome(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pharmacyScreen);
  }
}

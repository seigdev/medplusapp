import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:medplusapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:medplusapp/widgets/app_bar/custom_app_bar.dart';
import 'package:medplusapp/widgets/custom_elevated_button.dart';
import 'package:medplusapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class CreateStoryScreen extends StatelessWidget {
  CreateStoryScreen({Key? key}) : super(key: key);

  TextEditingController enterController = TextEditingController();

  TextEditingController settingsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 14.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Title", style: theme.textTheme.titleMedium)),
                  SizedBox(height: 10.v),
                  CustomTextFormField(
                      controller: enterController, hintText: "Enter"),
                  SizedBox(height: 20.v),
                  _buildLabelIcon(context),
                  SizedBox(height: 15.v),
                  CustomTextFormField(
                      controller: settingsController,
                      hintText: "Enter Text",
                      textInputAction: TextInputAction.done,
                      suffix: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 8.v, 8.h, 8.v),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgSettings,
                              height: 11.adaptSize,
                              width: 11.adaptSize)),
                      suffixConstraints: BoxConstraints(maxHeight: 128.v),
                      maxLines: 7,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 8.h, vertical: 9.v)),
                  SizedBox(height: 6.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text("0/1000",
                          style: CustomTextStyles.labelLargeIndigo100)),
                  SizedBox(height: 22.v),
                  _buildInput(context),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildPublish(context)));
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
            text: "Create Story",
            margin: EdgeInsets.only(left: 35.h, top: 40.v, bottom: 13.v)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildLabelIcon(BuildContext context) {
    return Container(
        width: 390.h,
        decoration: AppDecoration.white
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder7),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              Text("Story", style: theme.textTheme.titleMedium)
            ]));
  }

  /// Section Widget
  Widget _buildLabelIcon1(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(right: 104.h),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 280.h,
                      padding: EdgeInsets.symmetric(vertical: 1.v),
                      decoration: AppDecoration.white.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder7),
                      child: Text("Photos",
                          style: CustomTextStyles
                              .titleMediumOnPrimaryContainer_1)),
                  SizedBox(height: 17.v),
                  Padding(
                      padding: EdgeInsets.only(right: 28.h),
                      child: Row(children: [
                        CustomImageView(
                            imagePath:
                                ImageConstant.imgFrame12564Primarycontainer,
                            height: 100.v,
                            width: 120.h,
                            radius: BorderRadius.circular(10.h)),
                        CustomImageView(
                            imagePath:
                                ImageConstant.imgFrame12564Primarycontainer,
                            height: 100.v,
                            width: 120.h,
                            radius: BorderRadius.circular(10.h),
                            margin: EdgeInsets.only(left: 12.h))
                      ]))
                ])));
  }

  /// Section Widget
  Widget _buildInput(BuildContext context) {
    return SizedBox(
        height: 138.v,
        width: 384.h,
        child: Stack(alignment: Alignment.centerLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgFrame12564Primarycontainer,
              height: 100.v,
              width: 120.h,
              radius: BorderRadius.circular(10.h),
              alignment: Alignment.bottomRight),
          _buildLabelIcon1(context)
        ]));
  }

  /// Section Widget
  Widget _buildPublish(BuildContext context) {
    return CustomElevatedButton(
        text: "Publish",
        margin: EdgeInsets.only(left: 19.h, right: 19.h, bottom: 31.v),
        onPressed: () {
          onTapPublish(context);
        });
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the scwCommunityScreen when the action is triggered.
  onTapPublish(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.scwCommunityScreen);
  }
}

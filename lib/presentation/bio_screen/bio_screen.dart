import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:medplusapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:medplusapp/widgets/app_bar/custom_app_bar.dart';
import 'package:medplusapp/widgets/custom_elevated_button.dart';
import 'package:medplusapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class BioScreen extends StatelessWidget {
  BioScreen({Key? key}) : super(key: key);

  TextEditingController settingsController = TextEditingController();

  TextEditingController enterController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 16.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          width: 373.h,
                          margin: EdgeInsets.only(right: 16.h),
                          child: Text(
                              "Write a brief description of your experience and services below. This will be displayed on your profile for patients to see.",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyLarge!
                                  .copyWith(height: 1.50))),
                      SizedBox(height: 28.v),
                      _buildLabelIcon(context),
                      SizedBox(height: 15.v),
                      CustomTextFormField(
                          controller: settingsController,
                          hintText: "Enter Text",
                          suffix: Container(
                              margin: EdgeInsets.fromLTRB(30.h, 8.v, 8.h, 8.v),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgSettings,
                                  height: 11.adaptSize,
                                  width: 11.adaptSize)),
                          suffixConstraints: BoxConstraints(maxHeight: 128.v),
                          maxLines: 7,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 8.h, vertical: 9.v)),
                      SizedBox(height: 6.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Text("0/300",
                              style: CustomTextStyles.labelLargeIndigo100)),
                      SizedBox(height: 22.v),
                      Divider(color: appTheme.gray300),
                      SizedBox(height: 19.v),
                      Text("Services",
                          style:
                              CustomTextStyles.titleMediumSecondaryContainer_1),
                      SizedBox(height: 21.v),
                      Text("Service Type", style: theme.textTheme.titleMedium),
                      SizedBox(height: 8.v),
                      CustomTextFormField(
                          controller: enterController,
                          hintText: "Enter",
                          textInputAction: TextInputAction.done),
                      SizedBox(height: 20.v),
                      Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgPlus,
                            height: 24.adaptSize,
                            width: 24.adaptSize),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 4.h, top: 3.v, bottom: 3.v),
                            child: Text("Add Service",
                                style:
                                    CustomTextStyles.titleSmallPrimarySemiBold))
                      ]),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildSave(context)));
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
            text: "Bio",
            margin: EdgeInsets.only(left: 35.h, top: 37.v, bottom: 16.v)),
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
              Text("Biography", style: theme.textTheme.titleMedium)
            ]));
  }

  /// Section Widget
  Widget _buildSave(BuildContext context) {
    return CustomElevatedButton(
        text: "Save",
        margin: EdgeInsets.only(left: 19.h, right: 19.h, bottom: 28.v));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

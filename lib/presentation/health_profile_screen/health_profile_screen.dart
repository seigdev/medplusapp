import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:medplusapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:medplusapp/widgets/app_bar/custom_app_bar.dart';
import 'package:medplusapp/widgets/custom_drop_down.dart';
import 'package:medplusapp/widgets/custom_elevated_button.dart';
import 'package:medplusapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class HealthProfileScreen extends StatelessWidget {
  HealthProfileScreen({Key? key}) : super(key: key);

  TextEditingController enterManagingDoctorController = TextEditingController();

  TextEditingController enterManagingDoctorController1 =
      TextEditingController();

  TextEditingController enterManagingDoctorController2 =
      TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController settingsController = TextEditingController();

  TextEditingController enterManagingDoctorController3 =
      TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  TextEditingController settingsController1 = TextEditingController();

  TextEditingController enterManagingDoctorController4 =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
            width: double.maxFinite,
            child: Column(children: [
              SizedBox(height: 16.v),
              Expanded(
                  child: SingleChildScrollView(
                      child: Container(
                          margin: EdgeInsets.only(bottom: 5.v),
                          padding: EdgeInsets.symmetric(horizontal: 19.h),
                          child: Column(children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text("Update your health details here",
                                    style: theme.textTheme.bodyLarge)),
                            SizedBox(height: 28.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgRectangle117,
                                      height: 80.adaptSize,
                                      width: 80.adaptSize,
                                      radius: BorderRadius.circular(10.h)),
                                  Container(
                                      width: 101.h,
                                      margin: EdgeInsets.only(
                                          left: 8.h, top: 25.v, bottom: 25.v),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 4.h, vertical: 5.v),
                                      decoration: AppDecoration.white.copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder15),
                                      child: Text("Upload Photo",
                                          style: CustomTextStyles
                                              .titleSmallPrimary))
                                ])),
                            SizedBox(height: 31.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text("Blood Group",
                                    style: theme.textTheme.titleMedium)),
                            SizedBox(height: 8.v),
                            _buildEnterManagingDoctor(context),
                            SizedBox(height: 21.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "Steady State - PVC ",
                                          style: CustomTextStyles
                                              .titleMediumff2b2a29),
                                      TextSpan(
                                          text: "(Optional)",
                                          style: CustomTextStyles
                                              .bodyMediumff667398)
                                    ]),
                                    textAlign: TextAlign.left)),
                            SizedBox(height: 8.v),
                            _buildEnterManagingDoctor1(context),
                            SizedBox(height: 21.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "Last Confirmed PVC ",
                                          style: CustomTextStyles
                                              .titleMediumff2b2a29),
                                      TextSpan(
                                          text: "(Optional)",
                                          style: CustomTextStyles
                                              .bodyMediumff667398)
                                    ]),
                                    textAlign: TextAlign.left)),
                            SizedBox(height: 8.v),
                            _buildEnterManagingDoctor2(context),
                            SizedBox(height: 20.v),
                            Divider(color: appTheme.gray300),
                            SizedBox(height: 20.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text("Current Condition(s)",
                                    style: CustomTextStyles
                                        .titleMediumSecondaryContainer_1)),
                            SizedBox(height: 18.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text("Condition Name",
                                    style: theme.textTheme.titleMedium)),
                            SizedBox(height: 15.v),
                            _buildName(context),
                            SizedBox(height: 20.v),
                            _buildLabelIcon(context),
                            SizedBox(height: 15.v),
                            _buildSettings(context),
                            SizedBox(height: 6.v),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Text("0/300",
                                    style:
                                        CustomTextStyles.labelLargeIndigo100)),
                            SizedBox(height: 22.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgPlus,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 4.h, top: 3.v, bottom: 3.v),
                                      child: Text("Add Condition",
                                          style: CustomTextStyles
                                              .titleSmallPrimarySemiBold))
                                ])),
                            SizedBox(height: 20.v),
                            Divider(color: appTheme.gray300),
                            SizedBox(height: 20.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text("Allergy(s)",
                                    style: CustomTextStyles
                                        .titleMediumSecondaryContainer_1)),
                            SizedBox(height: 20.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text("Allergy Type",
                                    style: theme.textTheme.titleMedium)),
                            SizedBox(height: 13.v),
                            _buildEnterManagingDoctor3(context),
                            SizedBox(height: 21.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text("Severity",
                                    style: theme.textTheme.titleMedium)),
                            SizedBox(height: 13.v),
                            CustomDropDown(
                                hintText: "Select",
                                hintStyle:
                                    CustomTextStyles.bodyMediumBluegray500,
                                items: dropdownItemList,
                                onChanged: (value) {}),
                            SizedBox(height: 20.v),
                            _buildLabelIcon1(context),
                            SizedBox(height: 15.v),
                            _buildSettings1(context),
                            SizedBox(height: 6.v),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Text("0/300",
                                    style:
                                        CustomTextStyles.labelLargeIndigo100)),
                            SizedBox(height: 22.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgPlus,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 4.h, top: 4.v, bottom: 2.v),
                                      child: Text("Add Allergy",
                                          style: CustomTextStyles
                                              .titleSmallPrimarySemiBold))
                                ])),
                            SizedBox(height: 20.v),
                            Divider(color: appTheme.gray300),
                            SizedBox(height: 20.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text("Managing Doctor",
                                    style: theme.textTheme.titleMedium)),
                            SizedBox(height: 13.v),
                            _buildEnterManagingDoctor4(context)
                          ]))))
            ])),
        bottomNavigationBar: _buildSave(context));
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
            text: "Health Profile", margin: EdgeInsets.only(left: 35.h)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildEnterManagingDoctor(BuildContext context) {
    return CustomTextFormField(
        controller: enterManagingDoctorController, hintText: "Enter");
  }

  /// Section Widget
  Widget _buildEnterManagingDoctor1(BuildContext context) {
    return CustomTextFormField(
        controller: enterManagingDoctorController1, hintText: "Enter");
  }

  /// Section Widget
  Widget _buildEnterManagingDoctor2(BuildContext context) {
    return CustomTextFormField(
        controller: enterManagingDoctorController2, hintText: "Enter");
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return CustomTextFormField(controller: nameController, hintText: "Enter");
  }

  /// Section Widget
  Widget _buildLabelIcon(BuildContext context) {
    return Container(
        width: 390.h,
        decoration: AppDecoration.white
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 1.v),
              Text("Additional Note", style: theme.textTheme.titleMedium)
            ]));
  }

  /// Section Widget
  Widget _buildSettings(BuildContext context) {
    return CustomTextFormField(
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
        contentPadding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 9.v));
  }

  /// Section Widget
  Widget _buildEnterManagingDoctor3(BuildContext context) {
    return CustomTextFormField(
        controller: enterManagingDoctorController3, hintText: "Enter");
  }

  /// Section Widget
  Widget _buildLabelIcon1(BuildContext context) {
    return Container(
        width: 390.h,
        decoration: AppDecoration.white
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 1.v),
              Text("Additional Note", style: theme.textTheme.titleMedium)
            ]));
  }

  /// Section Widget
  Widget _buildSettings1(BuildContext context) {
    return CustomTextFormField(
        controller: settingsController1,
        hintText: "Enter Text",
        suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 8.v, 8.h, 8.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgSettings,
                height: 11.adaptSize,
                width: 11.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 128.v),
        maxLines: 7,
        contentPadding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 9.v));
  }

  /// Section Widget
  Widget _buildEnterManagingDoctor4(BuildContext context) {
    return CustomTextFormField(
        controller: enterManagingDoctorController4,
        hintText: "Enter",
        textInputAction: TextInputAction.done);
  }

  /// Section Widget
  Widget _buildSave(BuildContext context) {
    return CustomElevatedButton(
        text: "Save",
        margin: EdgeInsets.only(left: 19.h, right: 19.h, bottom: 25.v));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

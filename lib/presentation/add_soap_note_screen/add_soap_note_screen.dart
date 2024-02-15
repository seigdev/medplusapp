import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:medplusapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:medplusapp/widgets/app_bar/custom_app_bar.dart';
import 'package:medplusapp/widgets/custom_drop_down.dart';
import 'package:medplusapp/widgets/custom_elevated_button.dart';
import 'package:medplusapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AddSoapNoteScreen extends StatelessWidget {
  AddSoapNoteScreen({Key? key}) : super(key: key);

  TextEditingController fullNameController = TextEditingController();

  TextEditingController autoLoadedController = TextEditingController();

  TextEditingController dateOfBirthController = TextEditingController();

  TextEditingController prescriptionValue1Controller = TextEditingController();

  TextEditingController prescriptionValue2Controller = TextEditingController();

  TextEditingController enter1Controller = TextEditingController();

  TextEditingController enter2Controller = TextEditingController();

  TextEditingController medicationController = TextEditingController();

  TextEditingController dosageController = TextEditingController();

  TextEditingController durationValue1Controller = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  TextEditingController durationValue3Controller = TextEditingController();

  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 24.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              margin: EdgeInsets.only(bottom: 5.v),
                              padding: EdgeInsets.symmetric(horizontal: 19.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Full Name",
                                        style: theme.textTheme.titleMedium),
                                    SizedBox(height: 15.v),
                                    _buildFullName(context),
                                    SizedBox(height: 19.v),
                                    Text("Gender",
                                        style: theme.textTheme.titleMedium),
                                    SizedBox(height: 15.v),
                                    _buildAutoLoaded(context),
                                    SizedBox(height: 19.v),
                                    Text("Date of Birth",
                                        style: theme.textTheme.titleMedium),
                                    SizedBox(height: 15.v),
                                    _buildFrame(context),
                                    SizedBox(height: 19.v),
                                    Text("Consultation Date & Time",
                                        style: theme.textTheme.titleMedium),
                                    SizedBox(height: 15.v),
                                    _buildDateOfBirth(context),
                                    SizedBox(height: 20.v),
                                    _buildComplaint(context),
                                    SizedBox(height: 15.v),
                                    _buildPrescriptionValue1(context),
                                    SizedBox(height: 20.v),
                                    _buildAssessment(context),
                                    SizedBox(height: 15.v),
                                    _buildPrescriptionValue2(context),
                                    SizedBox(height: 21.v),
                                    Text("Diagnosis",
                                        style: theme.textTheme.titleMedium),
                                    SizedBox(height: 13.v),
                                    _buildEnter1(context),
                                    SizedBox(height: 20.v),
                                    Text("Treatment",
                                        style: theme.textTheme.titleMedium),
                                    SizedBox(height: 14.v),
                                    _buildEnter2(context),
                                    SizedBox(height: 20.v),
                                    Divider(),
                                    SizedBox(height: 20.v),
                                    Text("Prescription",
                                        style: CustomTextStyles
                                            .titleMediumSecondaryContainer),
                                    SizedBox(height: 17.v),
                                    Text("Medication",
                                        style: theme.textTheme.titleMedium),
                                    SizedBox(height: 15.v),
                                    _buildMedication(context),
                                    SizedBox(height: 21.v),
                                    Text("Dosage",
                                        style: theme.textTheme.titleMedium),
                                    SizedBox(height: 13.v),
                                    _buildBox(context),
                                    SizedBox(height: 19.v),
                                    Text("Duration",
                                        style: theme.textTheme.titleMedium),
                                    SizedBox(height: 15.v),
                                    _buildDurationValue2(context),
                                    SizedBox(height: 20.v),
                                    Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgPlus,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 4.h, top: 4.v, bottom: 2.v),
                                          child: Text("Add Prescription",
                                              style: CustomTextStyles
                                                  .titleSmallPrimarySemiBold))
                                    ]),
                                    SizedBox(height: 20.v),
                                    Divider(),
                                    SizedBox(height: 20.v),
                                    Text("Follow Up",
                                        style: theme.textTheme.titleMedium),
                                    SizedBox(height: 13.v),
                                    _buildFollowUp(context),
                                    SizedBox(height: 20.v),
                                    Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgCarbonCloudUpload,
                                          height: 32.adaptSize,
                                          width: 32.adaptSize),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 10.h,
                                              top: 8.v,
                                              bottom: 6.v),
                                          child: Text(
                                              "Upload Supporting Document(s)",
                                              style: CustomTextStyles
                                                  .titleSmallPrimarySemiBold))
                                    ])
                                  ]))))
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
            text: "SOAP Note",
            margin: EdgeInsets.only(left: 35.h, top: 37.v, bottom: 16.v)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildFullName(BuildContext context) {
    return CustomTextFormField(
        controller: fullNameController, hintText: "Auto-loaded");
  }

  /// Section Widget
  Widget _buildAutoLoaded(BuildContext context) {
    return CustomTextFormField(
        controller: autoLoadedController, hintText: "Auto-loaded");
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 11.v),
        decoration: AppDecoration.outlineIndigo
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder7),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(bottom: 4.v),
              child: Text("Auto-loaded",
                  style: CustomTextStyles.bodyMediumBluegray500)),
          CustomImageView(
              imagePath: ImageConstant.imgIcrounddaterange,
              height: 20.adaptSize,
              width: 20.adaptSize,
              margin: EdgeInsets.only(right: 6.h))
        ]));
  }

  /// Section Widget
  Widget _buildDateOfBirth(BuildContext context) {
    return CustomTextFormField(
        controller: dateOfBirthController, hintText: "Auto-loaded");
  }

  /// Section Widget
  Widget _buildComplaint(BuildContext context) {
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
              Text("Complaint", style: theme.textTheme.titleMedium)
            ]));
  }

  /// Section Widget
  Widget _buildPrescriptionValue1(BuildContext context) {
    return CustomTextFormField(
        controller: prescriptionValue1Controller,
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
  Widget _buildAssessment(BuildContext context) {
    return Container(
        width: 390.h,
        decoration: AppDecoration.white
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder7),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 1.v),
              Text("Assessment", style: theme.textTheme.titleMedium)
            ]));
  }

  /// Section Widget
  Widget _buildPrescriptionValue2(BuildContext context) {
    return CustomTextFormField(
        controller: prescriptionValue2Controller,
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
  Widget _buildEnter1(BuildContext context) {
    return CustomTextFormField(controller: enter1Controller, hintText: "Enter");
  }

  /// Section Widget
  Widget _buildEnter2(BuildContext context) {
    return CustomTextFormField(controller: enter2Controller, hintText: "Enter");
  }

  /// Section Widget
  Widget _buildMedication(BuildContext context) {
    return CustomTextFormField(
        controller: medicationController, hintText: "Enter");
  }

  /// Section Widget
  Widget _buildDosage(BuildContext context) {
    return Expanded(
        child: CustomTextFormField(
            controller: dosageController, hintText: "0:0:0"));
  }

  /// Section Widget
  Widget _buildDay(BuildContext context) {
    return CustomElevatedButton(
        height: 46.v,
        width: 80.h,
        text: "/ Day",
        margin: EdgeInsets.only(left: 4.h),
        buttonStyle: CustomButtonStyles.fillBlueA,
        buttonTextStyle: CustomTextStyles.labelLargePrimaryContainer);
  }

  /// Section Widget
  Widget _buildBox(BuildContext context) {
    return Row(children: [_buildDosage(context), _buildDay(context)]);
  }

  /// Section Widget
  Widget _buildDurationValue1(BuildContext context) {
    return Expanded(
        child: CustomTextFormField(
            controller: durationValue1Controller, hintText: "0"));
  }

  /// Section Widget
  Widget _buildDurationValue2(BuildContext context) {
    return Row(children: [
      _buildDurationValue1(context),
      Padding(
          padding: EdgeInsets.only(left: 4.h),
          child: CustomDropDown(
              width: 80.h,
              icon: Container(
                  margin: EdgeInsets.fromLTRB(4.h, 13.v, 12.h, 13.v),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(4.h)),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgIconPrimarycontainer,
                      height: 20.adaptSize,
                      width: 20.adaptSize)),
              hintText: "Days",
              items: dropdownItemList,
              contentPadding:
                  EdgeInsets.only(left: 16.h, top: 15.v, bottom: 15.v),
              borderDecoration: DropDownStyleHelper.fillBlueA,
              fillColor: appTheme.blueA400,
              onChanged: (value) {}))
    ]);
  }

  /// Section Widget
  Widget _buildDurationValue3(BuildContext context) {
    return Expanded(
        child: CustomTextFormField(
            controller: durationValue3Controller,
            hintText: "0",
            textInputAction: TextInputAction.done));
  }

  /// Section Widget
  Widget _buildFollowUp(BuildContext context) {
    return Row(children: [
      _buildDurationValue3(context),
      Padding(
          padding: EdgeInsets.only(left: 4.h),
          child: CustomDropDown(
              width: 101.h,
              icon: Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 10.h, vertical: 13.v),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(4.h)),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgIconPrimarycontainer,
                      height: 20.adaptSize,
                      width: 20.adaptSize)),
              hintText: "Months",
              items: dropdownItemList1,
              contentPadding:
                  EdgeInsets.only(left: 16.h, top: 15.v, bottom: 15.v),
              borderDecoration: DropDownStyleHelper.fillBlueA,
              fillColor: appTheme.blueA400,
              onChanged: (value) {}))
    ]);
  }

  /// Section Widget
  Widget _buildSave(BuildContext context) {
    return CustomElevatedButton(
        text: "Save",
        margin: EdgeInsets.only(left: 19.h, right: 19.h, bottom: 22.v));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

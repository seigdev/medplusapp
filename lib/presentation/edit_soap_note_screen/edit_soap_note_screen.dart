import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:medplusapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:medplusapp/widgets/app_bar/custom_app_bar.dart';
import 'package:medplusapp/widgets/custom_drop_down.dart';
import 'package:medplusapp/widgets/custom_elevated_button.dart';
import 'package:medplusapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class EditSoapNoteScreen extends StatelessWidget {
  EditSoapNoteScreen({Key? key}) : super(key: key);

  TextEditingController fullNameController = TextEditingController();

  TextEditingController genderValueController = TextEditingController();

  TextEditingController consultationDateController = TextEditingController();

  TextEditingController descriptionController = TextEditingController();

  TextEditingController assessmentDescriptionController =
      TextEditingController();

  TextEditingController diagnosisValueController = TextEditingController();

  TextEditingController treatmentValueController = TextEditingController();

  TextEditingController blinatumomabmgController = TextEditingController();

  TextEditingController dosageFrameController = TextEditingController();

  TextEditingController durationValueController = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  TextEditingController followUpFrameController = TextEditingController();

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
                                    _buildGenderValue(context),
                                    SizedBox(height: 19.v),
                                    Text("Date of Birth",
                                        style: theme.textTheme.titleMedium),
                                    SizedBox(height: 15.v),
                                    _buildDateOfBirthFrame(context),
                                    SizedBox(height: 19.v),
                                    Text("Consultation Date & Time",
                                        style: theme.textTheme.titleMedium),
                                    SizedBox(height: 15.v),
                                    _buildConsultationDate(context),
                                    SizedBox(height: 20.v),
                                    _buildComplaintLabelIcon(context),
                                    SizedBox(height: 15.v),
                                    _buildDescription(context),
                                    SizedBox(height: 20.v),
                                    _buildAssessmentLabelIcon(context),
                                    SizedBox(height: 15.v),
                                    _buildAssessmentDescription(context),
                                    SizedBox(height: 21.v),
                                    Text("Diagnosis",
                                        style: theme.textTheme.titleMedium),
                                    SizedBox(height: 13.v),
                                    _buildDiagnosisValue(context),
                                    SizedBox(height: 20.v),
                                    Text("Treatment",
                                        style: theme.textTheme.titleMedium),
                                    SizedBox(height: 14.v),
                                    _buildTreatmentValue(context),
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
                                    _buildBlinatumomabmg(context),
                                    SizedBox(height: 21.v),
                                    Text("Dosage",
                                        style: theme.textTheme.titleMedium),
                                    SizedBox(height: 13.v),
                                    _buildBox(context),
                                    SizedBox(height: 19.v),
                                    Text("Duration",
                                        style: theme.textTheme.titleMedium),
                                    SizedBox(height: 15.v),
                                    _buildDurationBox(context),
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
                                    _buildBox1(context),
                                    SizedBox(height: 19.v),
                                    Text("Linked Documents",
                                        style: CustomTextStyles
                                            .titleMediumSemiBold_2),
                                    SizedBox(height: 10.v),
                                    _buildAttachmentRow(context)
                                  ]))))
                ])),
            bottomNavigationBar: _buildSaveButton(context)));
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
        title:
            AppbarSubtitle(text: "Edit", margin: EdgeInsets.only(left: 35.h)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildFullName(BuildContext context) {
    return CustomTextFormField(
        controller: fullNameController, hintText: "Ejiro Osarobo");
  }

  /// Section Widget
  Widget _buildGenderValue(BuildContext context) {
    return CustomTextFormField(
        controller: genderValueController, hintText: "Female");
  }

  /// Section Widget
  Widget _buildDateOfBirthFrame(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 11.v),
        decoration: AppDecoration.outlineIndigo
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder7),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(bottom: 3.v),
              child: Text("13/09/1992", style: theme.textTheme.bodyMedium)),
          CustomImageView(
              imagePath: ImageConstant.imgIcrounddaterange,
              height: 20.adaptSize,
              width: 20.adaptSize,
              margin: EdgeInsets.only(right: 6.h))
        ]));
  }

  /// Section Widget
  Widget _buildConsultationDate(BuildContext context) {
    return CustomTextFormField(
        controller: consultationDateController,
        hintText: "12/02/1992 | 09:00AM");
  }

  /// Section Widget
  Widget _buildComplaintLabelIcon(BuildContext context) {
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
  Widget _buildDescription(BuildContext context) {
    return CustomTextFormField(
        controller: descriptionController,
        hintText:
            "Patient complained of persistent fatigue, frequent infections, weightloss, recurrent nosebleeds, excessive sweating, and bone pain.",
        suffix: Container(
            margin: EdgeInsets.fromLTRB(18.h, 8.v, 8.h, 8.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgSettings,
                height: 11.adaptSize,
                width: 11.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 128.v),
        maxLines: 5,
        contentPadding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 9.v));
  }

  /// Section Widget
  Widget _buildAssessmentLabelIcon(BuildContext context) {
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
  Widget _buildAssessmentDescription(BuildContext context) {
    return CustomTextFormField(
        controller: assessmentDescriptionController,
        hintText:
            "Patient has abnormal levels of white blood cells that suggests leukemia. I recommend patient runs a blood test and extracts a sample of bone marrow from the hipbone to determine treatment options.",
        suffix: Container(
            margin: EdgeInsets.fromLTRB(-7.h, 8.v, 8.h, 8.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgSettings,
                height: 11.adaptSize,
                width: 11.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 128.v),
        maxLines: 5,
        contentPadding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 9.v));
  }

  /// Section Widget
  Widget _buildDiagnosisValue(BuildContext context) {
    return CustomTextFormField(
        controller: diagnosisValueController, hintText: "Lymphocytic Leukemia");
  }

  /// Section Widget
  Widget _buildTreatmentValue(BuildContext context) {
    return CustomTextFormField(
        controller: treatmentValueController, hintText: "Immunotherapy");
  }

  /// Section Widget
  Widget _buildBlinatumomabmg(BuildContext context) {
    return CustomTextFormField(
        controller: blinatumomabmgController, hintText: "Blinatumomab (10mg)");
  }

  /// Section Widget
  Widget _buildDosageFrame(BuildContext context) {
    return Expanded(
        child: CustomTextFormField(
            controller: dosageFrameController, hintText: "1:0:1"));
  }

  /// Section Widget
  Widget _buildDayButton(BuildContext context) {
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
    return Row(
        children: [_buildDosageFrame(context), _buildDayButton(context)]);
  }

  /// Section Widget
  Widget _buildDurationValue(BuildContext context) {
    return Expanded(
        child: CustomTextFormField(
            controller: durationValueController, hintText: "5"));
  }

  /// Section Widget
  Widget _buildDurationBox(BuildContext context) {
    return Row(children: [
      _buildDurationValue(context),
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
  Widget _buildFollowUpFrame(BuildContext context) {
    return Expanded(
        child: CustomTextFormField(
            controller: followUpFrameController,
            hintText: "3",
            textInputAction: TextInputAction.done));
  }

  /// Section Widget
  Widget _buildBox1(BuildContext context) {
    return Row(children: [
      _buildFollowUpFrame(context),
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
  Widget _buildAttachmentRow(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(9.h),
        decoration: AppDecoration.outlineIndigo100
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder7),
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgFiletype,
              height: 30.adaptSize,
              width: 30.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Blood Test.pdf",
                        style: CustomTextStyles.titleSmallOnPrimaryContainer),
                    Text("100KB", style: CustomTextStyles.bodySmallBluegray400)
                  ])),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgFluentShare48Regular,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 4.v)),
          CustomImageView(
              imagePath: ImageConstant.imgAntDesignDownloadOutlined,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(left: 16.h, top: 4.v, bottom: 4.v))
        ]));
  }

  /// Section Widget
  Widget _buildSaveButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Save",
        margin: EdgeInsets.only(left: 19.h, right: 19.h, bottom: 21.v));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

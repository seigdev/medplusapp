import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:medplusapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:medplusapp/widgets/app_bar/custom_app_bar.dart';
import 'package:medplusapp/widgets/custom_elevated_button.dart';
import 'package:medplusapp/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class NotificationsScreen extends StatelessWidget {
  NotificationsScreen({Key? key}) : super(key: key);

  bool isSelectedSwitch = false;

  bool isSelectedSwitch1 = false;

  bool isSelectedSwitch2 = false;

  bool isSelectedSwitch3 = false;

  bool isSelectedSwitch4 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 29.v),
                child: Column(children: [
                  _buildAppointmentsFrame(context),
                  SizedBox(height: 28.v),
                  _buildTestResultsFrame(context),
                  SizedBox(height: 30.v),
                  _buildBillingFrame(context),
                  SizedBox(height: 29.v),
                  _buildFeedbackFrame(context),
                  SizedBox(height: 28.v),
                  _buildAnnouncementsFrame(context),
                  SizedBox(height: 5.v)
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
        title: AppbarSubtitle(
            text: "Notifications", margin: EdgeInsets.only(left: 35.h)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildAppointmentsFrame(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("Appointments", style: CustomTextStyles.titleSmallSemiBold),
        SizedBox(height: 6.v),
        SizedBox(
            width: 277.h,
            child: Text(
                "Alerts and notifications about upcoming appointments.\r",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyMediumGray90001
                    .copyWith(height: 1.43)))
      ])),
      CustomSwitch(
          margin: EdgeInsets.only(left: 76.h, top: 44.v),
          value: isSelectedSwitch,
          onChange: (value) {
            isSelectedSwitch = value;
          })
    ]);
  }

  /// Section Widget
  Widget _buildTestResultsFrame(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("Test Results", style: CustomTextStyles.titleSmallSemiBold),
        SizedBox(height: 9.v),
        Text("Alerts to notify you when results are ready",
            style: CustomTextStyles.bodyMediumGray90001)
      ])),
      CustomSwitch(
          margin: EdgeInsets.only(left: 60.h, top: 25.v),
          value: isSelectedSwitch1,
          onChange: (value) {
            isSelectedSwitch1 = value;
          })
    ]);
  }

  /// Section Widget
  Widget _buildBillingFrame(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("Billing", style: CustomTextStyles.titleSmallSemiBold),
        SizedBox(height: 7.v),
        Text("Updates and notifications on payments.",
            style: CustomTextStyles.bodyMediumGray90001)
      ])),
      CustomSwitch(
          margin: EdgeInsets.only(left: 80.h, top: 24.v),
          value: isSelectedSwitch2,
          onChange: (value) {
            isSelectedSwitch2 = value;
          })
    ]);
  }

  /// Section Widget
  Widget _buildFeedbackFrame(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("Feedback", style: CustomTextStyles.titleSmallSemiBold),
        SizedBox(height: 7.v),
        SizedBox(
            width: 284.h,
            child: Text(
                "Get surveys, feedback forms, and help us improve the way we serve you.",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyMediumGray90001
                    .copyWith(height: 1.43)))
      ])),
      CustomSwitch(
          margin: EdgeInsets.only(left: 69.h, top: 45.v),
          value: isSelectedSwitch3,
          onChange: (value) {
            isSelectedSwitch3 = value;
          })
    ]);
  }

  /// Section Widget
  Widget _buildAnnouncementsFrame(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("Announcements", style: CustomTextStyles.titleSmallSemiBold),
        SizedBox(height: 7.v),
        SizedBox(
            width: 282.h,
            child: Text(
                "Stay up to date as we introduce new and exciting features to serve you better.\r",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyMediumGray90001
                    .copyWith(height: 1.43)))
      ])),
      CustomSwitch(
          margin: EdgeInsets.only(left: 71.h, top: 45.v),
          value: isSelectedSwitch4,
          onChange: (value) {
            isSelectedSwitch4 = value;
          })
    ]);
  }

  /// Section Widget
  Widget _buildSaveButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Save",
        margin: EdgeInsets.only(left: 19.h, right: 19.h, bottom: 28.v));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

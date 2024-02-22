import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';

import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ReviewBookingScreen extends StatelessWidget {
  ReviewBookingScreen({Key? key}) : super(key: key);

  TextEditingController entervalueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 20.v),
                child: Column(children: [
                  _buildBookingTable(context),
                  SizedBox(height: 35.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          width: 322.h,
                          margin: EdgeInsets.only(right: 67.h),
                          child: Text(
                              "Please share additional information about your condition or the reason for this appointment.",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyMedium!
                                  .copyWith(height: 1.71)))),
                  SizedBox(height: 28.v),
                  _buildNoteLabel(context),
                  SizedBox(height: 4.v),
                  CustomTextFormField(
                      controller: entervalueController,
                      hintText: "Enter",
                      textInputAction: TextInputAction.done,
                      suffix: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 8.v, 8.h, 8.v),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgSettings,
                              height: 11.adaptSize,
                              width: 11.adaptSize)),
                      suffixConstraints: BoxConstraints(maxHeight: 128.v),
                      maxLines: 7),
                  SizedBox(height: 6.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text("0/255", style: theme.textTheme.labelLarge)),
                  Spacer(),
                  CustomElevatedButton(
                    height: 43.v,
                    text: "Pay",
                  ),
                  SizedBox(height: 20.v),
                  CustomOutlinedButton(text: "Cancel")
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
        title: AppbarTitle(
            text: "Review Appointment",
            margin: EdgeInsets.only(left: 35.h, top: 39.v, bottom: 14.v)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildBookingTable(BuildContext context) {
    return Container(
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Container(
            decoration:
                BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Column(children: [
              _buildAppointmentDetails(context,
                  dateTimeText: "Doctor", priceText: "Dr. Aisha Mohammed"),
              _buildAppointmentDetails(context,
                  dateTimeText: "Date & Time",
                  priceText: "06, September 2022 | 03:00 PM"),
              _buildAppointmentDetails(context,
                  dateTimeText: "Consultation Fee", priceText: "₦ 10,500.00"),
              _buildAppointmentDetails(context,
                  dateTimeText: "Specialty", priceText: "Haematologist")
            ])));
  }

  /// Section Widget
  Widget _buildNoteLabel(BuildContext context) {
    return Container(
        width: 390.h,
        padding: EdgeInsets.symmetric(vertical: 1.v),
        child: Text("Note"));
  }

  /// Common widget
  Widget _buildAppointmentDetails(
    BuildContext context, {
    required String dateTimeText,
    required String priceText,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 12.v),
        decoration: AppDecoration.fillGray,
        child: Row(children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 18.v),
              child: Text(dateTimeText,
                  style: theme.textTheme.bodyMedium!
                      .copyWith(color: theme.colorScheme.onPrimaryContainer))),
          Container(
              width: 146.h,
              margin: EdgeInsets.only(left: 117.h, top: 6.v),
              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "06, September 2022 ",
                        style: CustomTextStyles.bodyMediumff2b2a29),
                    TextSpan(text: "|"),
                    TextSpan(
                        text: " 03:00 PM",
                        style: CustomTextStyles.bodyMediumff2b2a29)
                  ]),
                  textAlign: TextAlign.left))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

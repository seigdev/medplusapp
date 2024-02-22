import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:medplusapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:medplusapp/widgets/app_bar/custom_app_bar.dart';
import 'package:medplusapp/widgets/custom_elevated_button.dart';
import 'package:medplusapp/widgets/custom_icon_button.dart';
import 'package:medplusapp/widgets/custom_search_view.dart';
import 'package:medplusapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class BookLabTestScreen extends StatelessWidget {
  BookLabTestScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  TextEditingController durationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 20.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomSearchView(
                          controller: searchController,
                          hintText: "Search tests"),
                      SizedBox(height: 21.v),
                      Text("Frequently booked tests",
                          style: CustomTextStyles.titleMediumSemiBold_1),
                      SizedBox(height: 8.v),
                      _buildFrame1(context),
                      SizedBox(height: 10.v),
                      _buildFrame2(context),
                      SizedBox(height: 10.v),
                      _buildFrame3(context),
                      SizedBox(height: 10.v),
                      _buildFrame5(context),
                      SizedBox(height: 10.v),
                      _buildFrame7(context),
                      SizedBox(height: 19.v),
                      Text("2 items selected",
                          style: CustomTextStyles.titleMediumBlueA400),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildPay31000(context)));
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
            text: "Book Lab Test", margin: EdgeInsets.only(left: 35.h)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 13.v),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 2.v, bottom: 3.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Fasting Blood Sugar (FBS)",
                        style: theme.textTheme.titleMedium),
                    SizedBox(height: 9.v),
                    RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Reports within",
                              style: CustomTextStyles.bodyMediumff828282),
                          TextSpan(text: " "),
                          TextSpan(
                              text: "9 hours",
                              style: CustomTextStyles.titleSmallff2b2a29)
                        ]),
                        textAlign: TextAlign.left)
                  ])),
          Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Column(children: [
                CustomIconButton(
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    padding: EdgeInsets.all(6.h),
                    decoration: IconButtonStyleHelper.fillPrimaryTL3,
                    alignment: Alignment.centerRight,
                    child:
                        CustomImageView(imagePath: ImageConstant.imgCheckmark)),
                SizedBox(height: 11.v),
                Text("₦5,500", style: CustomTextStyles.titleMediumSemiBold_2)
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildFrame2(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 13.v),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 1.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Text("Complete Blood Count (CBC)",
                                      style: theme.textTheme.titleMedium)),
                              SizedBox(height: 9.v),
                              CustomTextFormField(
                                  controller: durationController,
                                  hintText: "Reports within 6 hours",
                                  textInputAction: TextInputAction.done,
                                  alignment: Alignment.centerRight,
                                  borderDecoration:
                                      TextFormFieldStyleHelper.underLineIndigo,
                                  filled: false)
                            ])),
                    CustomImageView(
                        imagePath: ImageConstant.imgFrame1000000844,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin: EdgeInsets.only(bottom: 26.v))
                  ]),
              SizedBox(height: 8.v),
              Divider(),
              SizedBox(height: 8.v),
              Text("Includes:", style: theme.textTheme.titleSmall),
              SizedBox(height: 10.v),
              Text("Red blood cell count (RBC)",
                  style: theme.textTheme.bodyMedium),
              SizedBox(height: 9.v),
              Text("Hb - Haemoglobin", style: theme.textTheme.bodyMedium),
              SizedBox(height: 9.v),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Padding(
                    padding: EdgeInsets.only(bottom: 2.v),
                    child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Haematocrit ",
                              style: CustomTextStyles.bodyMediumff2b2a29),
                          TextSpan(
                              text: "& 12 more tests",
                              style: CustomTextStyles.titleSmallff2b2a29)
                        ]),
                        textAlign: TextAlign.left)),
                Text("₦25,500", style: CustomTextStyles.titleMediumSemiBold_2)
              ])
            ]));
  }

  /// Section Widget
  Widget _buildFrame3(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 12.v),
        decoration: AppDecoration.outlineIndigo
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 2.v, bottom: 3.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Thyroid Function Test (TFT)",
                        style: theme.textTheme.titleMedium),
                    SizedBox(height: 9.v),
                    RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Reports within",
                              style: CustomTextStyles.bodyMediumff828282),
                          TextSpan(
                              text: " 12",
                              style: CustomTextStyles.bodyMediumff2b2a29),
                          TextSpan(
                              text: " hours",
                              style: CustomTextStyles.titleSmallff2b2a29)
                        ]),
                        textAlign: TextAlign.left)
                  ])),
          Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Column(children: [
                Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        decoration: BoxDecoration(
                            color: appTheme.gray200,
                            borderRadius: BorderRadius.circular(3.h)))),
                SizedBox(height: 11.v),
                Text("₦11,200", style: CustomTextStyles.titleMediumSemiBold_2)
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildFrame5(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 12.v),
        decoration: AppDecoration.outlineIndigo
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Padding(
              padding: EdgeInsets.only(top: 2.v, bottom: 3.v),
              child: _buildFrame(context,
                  title: "Glycosylated Haemoglobin (HbA1c)",
                  durationText: "Reports within 96 hours")),
          Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Column(children: [
                Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        decoration: BoxDecoration(
                            color: appTheme.gray200,
                            borderRadius: BorderRadius.circular(3.h)))),
                SizedBox(height: 11.v),
                Text("₦7,000", style: CustomTextStyles.titleMediumSemiBold_2)
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildFrame7(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 12.v),
        decoration: AppDecoration.outlineIndigo
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Padding(
              padding: EdgeInsets.only(top: 2.v, bottom: 3.v),
              child: _buildFrame(context,
                  title: "Glycosylated Haemoglobin (HbA1c)",
                  durationText: "Reports within 96 hours")),
          Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Column(children: [
                Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        decoration: BoxDecoration(
                            color: appTheme.gray200,
                            borderRadius: BorderRadius.circular(3.h)))),
                SizedBox(height: 11.v),
                Text("₦7,000", style: CustomTextStyles.titleMediumSemiBold_2)
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildPay31000(BuildContext context) {
    return CustomElevatedButton(
        height: 52.v,
        text: "Pay ₦31,000 ",
        margin: EdgeInsets.only(left: 19.h, right: 19.h, bottom: 20.v));
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String title,
    required String durationText,
  }) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(title,
          style:
              theme.textTheme.titleMedium!.copyWith(color: appTheme.gray900)),
      SizedBox(height: 9.v),
      RichText(
          text: TextSpan(children: [
            TextSpan(
                text: "Reports within",
                style: CustomTextStyles.bodyMediumff828282),
            TextSpan(text: " "),
            TextSpan(
                text: "96 hours", style: CustomTextStyles.titleSmallff2b2a29)
          ]),
          textAlign: TextAlign.left)
    ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

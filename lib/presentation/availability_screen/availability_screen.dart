import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:medplusapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:medplusapp/widgets/app_bar/custom_app_bar.dart';
import 'package:medplusapp/widgets/custom_elevated_button.dart';
import 'package:medplusapp/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class AvailabilityScreen extends StatelessWidget {
  AvailabilityScreen({Key? key}) : super(key: key);

  bool isSelectedSwitch = false;

  bool isSelectedSwitch1 = false;

  bool isSelectedSwitch2 = false;

  bool isSelectedSwitch3 = false;

  bool isSelectedSwitch4 = false;

  bool isSelectedSwitch5 = false;

  bool isSelectedSwitch6 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 16.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Configure the standard hours of your operation",
                          style: theme.textTheme.bodyLarge),
                      SizedBox(height: 28.v),
                      Padding(
                          padding: EdgeInsets.only(right: 218.h),
                          child: Row(children: [
                            Text("Sun", style: theme.textTheme.titleMedium),
                            Spacer(),
                            CustomSwitch(
                                value: isSelectedSwitch,
                                onChange: (value) {
                                  isSelectedSwitch = value;
                                }),
                            Padding(
                                padding: EdgeInsets.only(left: 10.h),
                                child: Text("Closed",
                                    style: theme.textTheme.bodyMedium))
                          ])),
                      SizedBox(height: 30.v),
                      _buildFrame5(context),
                      SizedBox(height: 30.v),
                      _buildFrame8(context),
                      SizedBox(height: 30.v),
                      _buildFrame11(context),
                      SizedBox(height: 30.v),
                      _buildFrame14(context),
                      SizedBox(height: 30.v),
                      _buildFrame17(context),
                      SizedBox(height: 30.v),
                      _buildFrame20(context),
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
            text: "Availability",
            margin: EdgeInsets.only(left: 35.h, top: 39.v, bottom: 14.v)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildFrame5(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 2.h),
        child: Row(children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 4.v),
              child: Text("Mon", style: theme.textTheme.titleMedium)),
          Spacer(flex: 54),
          CustomSwitch(
              margin: EdgeInsets.symmetric(vertical: 5.v),
              value: isSelectedSwitch1,
              onChange: (value) {
                isSelectedSwitch1 = value;
              }),
          Padding(
              padding: EdgeInsets.only(left: 10.h, top: 7.v, bottom: 3.v),
              child: Text("Open", style: theme.textTheme.bodyMedium)),
          Spacer(flex: 45),
          _buildFrame1(context, time: "9:00AM"),
          Padding(
              padding: EdgeInsets.only(left: 16.h, top: 6.v, bottom: 6.v),
              child: Text("TO", style: theme.textTheme.bodySmall)),
          Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: _buildFrame1(context, time: "6:00PM"))
        ]));
  }

  /// Section Widget
  Widget _buildFrame8(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 3.h),
        child: Row(children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 4.v),
              child: Text("Tue", style: theme.textTheme.titleMedium)),
          Spacer(flex: 56),
          CustomSwitch(
              margin: EdgeInsets.symmetric(vertical: 5.v),
              value: isSelectedSwitch2,
              onChange: (value) {
                isSelectedSwitch2 = value;
              }),
          Padding(
              padding: EdgeInsets.only(left: 10.h, top: 7.v, bottom: 3.v),
              child: Text("Open", style: theme.textTheme.bodyMedium)),
          Spacer(flex: 43),
          _buildFrame1(context, time: "9:00AM"),
          Padding(
              padding: EdgeInsets.only(left: 16.h, top: 6.v, bottom: 6.v),
              child: Text("TO", style: theme.textTheme.bodySmall)),
          Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: _buildFrame4(context, time: "6:00PM"))
        ]));
  }

  /// Section Widget
  Widget _buildFrame11(BuildContext context) {
    return Row(children: [
      Expanded(
          child: Row(children: [
        Padding(
            padding: EdgeInsets.only(top: 3.v, bottom: 5.v),
            child: Text("Wed", style: theme.textTheme.titleMedium)),
        Spacer(flex: 53),
        CustomSwitch(
            margin: EdgeInsets.symmetric(vertical: 5.v),
            value: isSelectedSwitch3,
            onChange: (value) {
              isSelectedSwitch3 = value;
            }),
        Padding(
            padding: EdgeInsets.only(left: 10.h, top: 7.v, bottom: 3.v),
            child: Text("Open", style: theme.textTheme.bodyMedium)),
        Spacer(flex: 46),
        _buildFrame1(context, time: "9:00AM"),
        Padding(
            padding: EdgeInsets.only(left: 16.h, top: 6.v, bottom: 6.v),
            child: Text("TO", style: theme.textTheme.bodySmall))
      ])),
      Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: _buildFrame4(context, time: "6:00PM"))
    ]);
  }

  /// Section Widget
  Widget _buildFrame14(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 3.h),
        child: Row(children: [
          Padding(
              padding: EdgeInsets.only(top: 3.v, bottom: 5.v),
              child: Text("Thurs", style: theme.textTheme.titleMedium)),
          Spacer(flex: 46),
          CustomSwitch(
              margin: EdgeInsets.symmetric(vertical: 5.v),
              value: isSelectedSwitch4,
              onChange: (value) {
                isSelectedSwitch4 = value;
              }),
          Padding(
              padding: EdgeInsets.only(left: 10.h, top: 7.v, bottom: 3.v),
              child: Text("Open", style: theme.textTheme.bodyMedium)),
          Spacer(flex: 53),
          _buildFrame1(context, time: "9:00AM"),
          Padding(
              padding: EdgeInsets.only(left: 16.h, top: 6.v, bottom: 6.v),
              child: Text("TO", style: theme.textTheme.bodySmall)),
          Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: _buildFrame4(context, time: "6:00PM"))
        ]));
  }

  /// Section Widget
  Widget _buildFrame17(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 3.h),
        child: Row(children: [
          Padding(
              padding: EdgeInsets.only(top: 3.v, bottom: 5.v),
              child: Text("Fri", style: theme.textTheme.titleMedium)),
          Spacer(flex: 60),
          CustomSwitch(
              margin: EdgeInsets.symmetric(vertical: 5.v),
              value: isSelectedSwitch5,
              onChange: (value) {
                isSelectedSwitch5 = value;
              }),
          Padding(
              padding: EdgeInsets.only(left: 10.h, top: 7.v, bottom: 3.v),
              child: Text("Open", style: theme.textTheme.bodyMedium)),
          Spacer(flex: 39),
          _buildFrame1(context, time: "9:00AM"),
          Padding(
              padding: EdgeInsets.only(left: 16.h, top: 6.v, bottom: 6.v),
              child: Text("TO", style: theme.textTheme.bodySmall)),
          Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: _buildFrame4(context, time: "6:00PM"))
        ]));
  }

  /// Section Widget
  Widget _buildFrame20(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 3.h),
        child: Row(children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 4.v),
              child: Text("Sat", style: theme.textTheme.titleMedium)),
          Spacer(flex: 57),
          CustomSwitch(
              margin: EdgeInsets.symmetric(vertical: 5.v),
              value: isSelectedSwitch6,
              onChange: (value) {
                isSelectedSwitch6 = value;
              }),
          Padding(
              padding: EdgeInsets.only(left: 10.h, top: 7.v, bottom: 3.v),
              child: Text("Open", style: theme.textTheme.bodyMedium)),
          Spacer(flex: 42),
          _buildFrame1(context, time: "9:00AM"),
          Padding(
              padding: EdgeInsets.only(left: 16.h, top: 6.v, bottom: 6.v),
              child: Text("TO", style: theme.textTheme.bodySmall)),
          Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: _buildFrame4(context, time: "6:00PM"))
        ]));
  }

  /// Section Widget
  Widget _buildSave(BuildContext context) {
    return CustomElevatedButton(
        text: "Save",
        margin: EdgeInsets.only(left: 19.h, right: 19.h, bottom: 21.v));
  }

  /// Common widget
  Widget _buildFrame1(
    BuildContext context, {
    required String time,
  }) {
    return Container(
        width: 70.h,
        padding: EdgeInsets.all(5.h),
        decoration: AppDecoration.outlineBluegray300
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
        child: Row(children: [
          Text(time,
              style:
                  theme.textTheme.bodySmall!.copyWith(color: appTheme.gray900)),
          CustomImageView(
              imagePath: ImageConstant.imgIconGray800,
              height: 5.v,
              width: 9.h,
              margin: EdgeInsets.only(left: 5.h, top: 5.v, bottom: 5.v))
        ]));
  }

  /// Common widget
  Widget _buildFrame4(
    BuildContext context, {
    required String time,
  }) {
    return Container(
        width: 69.h,
        padding: EdgeInsets.all(5.h),
        decoration: AppDecoration.outlineBluegray300
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
        child: Row(children: [
          Text(time,
              style:
                  theme.textTheme.bodySmall!.copyWith(color: appTheme.gray900)),
          CustomImageView(
              imagePath: ImageConstant.imgIconGray800,
              height: 5.v,
              width: 9.h,
              margin: EdgeInsets.only(left: 4.h, top: 5.v, bottom: 5.v))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

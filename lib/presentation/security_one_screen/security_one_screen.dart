import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:medplusapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:medplusapp/widgets/app_bar/custom_app_bar.dart';
import 'package:medplusapp/widgets/custom_drop_down.dart';
import 'package:medplusapp/widgets/custom_icon_button.dart';
import 'package:medplusapp/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class SecurityOneScreen extends StatelessWidget {
  SecurityOneScreen({Key? key}) : super(key: key);

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 21.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomDropDown(
                          hintText: "Password",
                          hintStyle: CustomTextStyles.titleMedium18,
                          items: dropdownItemList,
                          contentPadding: EdgeInsets.symmetric(vertical: 1.v),
                          onChanged: (value) {}),
                      SizedBox(height: 25.v),
                      Divider(),
                      SizedBox(height: 24.v),
                      _buildDiv(context, text: "Two Factor Authentication"),
                      SizedBox(height: 25.v),
                      Divider(),
                      SizedBox(height: 24.v),
                      _buildDiv(context, text: "Deactivate Account"),
                      SizedBox(height: 30.v),
                      Text("Are you sure you want to deactivate your account?",
                          style: theme.textTheme.bodyMedium),
                      SizedBox(height: 20.v),
                      Container(
                          width: 332.h,
                          margin: EdgeInsets.only(right: 57.h),
                          child: Text(
                              "Doing this will permanently delete your medplus account and all your records.",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyMedium!
                                  .copyWith(height: 1.71))),
                      SizedBox(height: 11.v),
                      Padding(
                          padding: EdgeInsets.only(right: 52.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgContrastGray30001,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                    margin: EdgeInsets.only(bottom: 21.v)),
                                Expanded(
                                    child: Container(
                                        width: 307.h,
                                        margin: EdgeInsets.only(left: 10.h),
                                        child: Text(
                                            "I understand the implications, deactivate my account",
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .bodyMediumGray90002
                                                .copyWith(height: 1.43))))
                              ])),
                      SizedBox(height: 22.v),
                      CustomOutlinedButton(
                          width: 115.h,
                          text: "Confirm",
                          buttonStyle: CustomButtonStyles.outlinePrimary),
                      SizedBox(height: 5.v)
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
            text: "Security",
            margin: EdgeInsets.only(left: 35.h, top: 39.v, bottom: 14.v)),
        styleType: Style.bgFill);
  }

  /// Common widget
  Widget _buildDiv(
    BuildContext context, {
    required String text,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(text,
              style: CustomTextStyles.titleMedium18
                  .copyWith(color: appTheme.gray900))),
      CustomIconButton(
          height: 24.adaptSize,
          width: 24.adaptSize,
          padding: EdgeInsets.all(7.h),
          decoration: IconButtonStyleHelper.fillPrimaryContainer,
          child: CustomImageView(imagePath: ImageConstant.imgIcon))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:medplusapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:medplusapp/widgets/app_bar/custom_app_bar.dart';

class ViewRxScreen extends StatelessWidget {
  const ViewRxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 15.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildFrame(context),
                      SizedBox(height: 24.v),
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "Date:",
                                style: CustomTextStyles.titleMediumff667398_1),
                            TextSpan(
                                text: " 12/10/2022",
                                style: CustomTextStyles.titleMediumff2b2a29)
                          ]),
                          textAlign: TextAlign.left),
                      SizedBox(height: 11.v),
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "Name:",
                                style: CustomTextStyles.titleMediumff667398_1),
                            TextSpan(
                                text: " Stella Adebayo",
                                style: CustomTextStyles.titleMediumff2b2a29)
                          ]),
                          textAlign: TextAlign.left),
                      SizedBox(height: 10.v),
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "Age:",
                                style: CustomTextStyles.titleMediumff667398_1),
                            TextSpan(
                                text: " 30",
                                style: CustomTextStyles.titleMediumff2b2a29)
                          ]),
                          textAlign: TextAlign.left),
                      SizedBox(height: 7.v),
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "Sex:",
                                style: CustomTextStyles.titleMediumff667398_1),
                            TextSpan(
                                text: " Female",
                                style: CustomTextStyles.titleMediumff2b2a29)
                          ]),
                          textAlign: TextAlign.left),
                      SizedBox(height: 36.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgUserGray900,
                          height: 75.v,
                          width: 93.h,
                          margin: EdgeInsets.only(left: 3.h)),
                      SizedBox(height: 36.v),
                      _buildFrame1(context),
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
            text: "View Prescription",
            margin: EdgeInsets.only(left: 35.h, top: 39.v, bottom: 14.v)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 90.h, vertical: 10.v),
        decoration: AppDecoration.fillBlueA
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL101),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Dr. Rashida Mohammed",
                  style: CustomTextStyles.titleMediumPrimaryContainerBold18),
              SizedBox(height: 7.v),
              Text("Haematologist",
                  style: CustomTextStyles.titleMediumPrimaryContainer_1)
            ]));
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 3.h),
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 14.v),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder7),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text("Medicine", style: theme.textTheme.titleMedium),
                Text("Dose", style: theme.textTheme.titleMedium),
                Text("Duration", style: theme.textTheme.titleMedium)
              ]),
              SizedBox(height: 14.v),
              Padding(
                  padding: EdgeInsets.only(right: 15.h),
                  child: Row(children: [
                    SizedBox(
                        width: 92.h,
                        child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "Panadol \n",
                                  style: CustomTextStyles.bodyLargeff2b2a29),
                              TextSpan(
                                  text: "(Tablet 10mg)",
                                  style: CustomTextStyles.bodyMediumff667398)
                            ]),
                            textAlign: TextAlign.left)),
                    Spacer(flex: 43),
                    Padding(
                        padding: EdgeInsets.only(top: 14.v, bottom: 12.v),
                        child: Text("2:2:2",
                            style: CustomTextStyles.bodyMediumBluegray900)),
                    Spacer(flex: 56),
                    Padding(
                        padding: EdgeInsets.only(top: 14.v, bottom: 12.v),
                        child: Text("10 Days",
                            style: CustomTextStyles.bodyMedium_1))
                  ])),
              SizedBox(height: 14.v),
              Padding(
                  padding: EdgeInsets.only(right: 21.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                  width: 104.h,
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "Chloroquin",
                                            style: CustomTextStyles
                                                .bodyLargeff2b2a29),
                                        TextSpan(
                                            text: " \n",
                                            style: CustomTextStyles
                                                .bodyLargeff2b2a29),
                                        TextSpan(
                                            text: "(Capsule 10mg)",
                                            style: CustomTextStyles
                                                .bodyMediumff667398)
                                      ]),
                                      textAlign: TextAlign.left)),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 54.h, top: 14.v, bottom: 12.v),
                                  child: Text("0:2:0",
                                      style: CustomTextStyles
                                          .bodyMediumBluegray900))
                            ]),
                        Padding(
                            padding: EdgeInsets.only(top: 14.v, bottom: 12.v),
                            child: Text("5 Days",
                                style: CustomTextStyles.bodyMedium_1))
                      ])),
              SizedBox(height: 14.v),
              Padding(
                  padding: EdgeInsets.only(right: 21.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                  width: 83.h,
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "Immodium",
                                            style: CustomTextStyles
                                                .bodyLargeff2b2a29),
                                        TextSpan(
                                            text: " \n",
                                            style: CustomTextStyles
                                                .bodyLargeff2b2a29),
                                        TextSpan(
                                            text: "(IV 2.5ml)",
                                            style: CustomTextStyles
                                                .bodyMediumff667398)
                                      ]),
                                      textAlign: TextAlign.left)),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 74.h, top: 14.v, bottom: 14.v),
                                  child: Text("1:0:1",
                                      style: CustomTextStyles
                                          .bodyMediumBluegray900))
                            ]),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 14.v),
                            child: Text("3 Days",
                                style: CustomTextStyles.bodyMedium_1))
                      ]))
            ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

import '../pharmacy_screen/widgets/userprofilelist1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:medplusapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:medplusapp/widgets/app_bar/appbar_trailing_iconbutton_three.dart';
import 'package:medplusapp/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:medplusapp/widgets/app_bar/custom_app_bar.dart';
import 'package:medplusapp/widgets/custom_elevated_button.dart';
import 'package:medplusapp/widgets/custom_outlined_button.dart';
import 'package:medplusapp/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class PharmacyScreen extends StatelessWidget {
  PharmacyScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 11.v),
                    child: Column(children: [
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 19.h),
                          child: CustomSearchView(
                              controller: searchController,
                              hintText: "Search Medicine")),
                      SizedBox(height: 30.v),
                      _buildSearchFrame(context),
                      SizedBox(height: 30.v),
                      _buildUserFrame(context),
                      SizedBox(height: 28.v),
                      _buildFeaturedProducts(context),
                      SizedBox(height: 30.v),
                      _buildUserProfileList(context),
                      SizedBox(height: 10.v),
                      _buildFrame(context)
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 82.v,
        leadingWidth: 43.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgGgMenuLeft,
            margin: EdgeInsets.only(left: 19.h, top: 13.v, bottom: 18.v)),
        title: AppbarSubtitle(
            text: "Pharmacy", margin: EdgeInsets.only(left: 35.h)),
        actions: [
          AppbarTrailingIconbuttonTwo(
              imagePath: ImageConstant.imgIcBaselineNot,
              margin: EdgeInsets.only(left: 19.h, top: 13.v, right: 12.h)),
          AppbarTrailingIconbuttonThree(
              imagePath: ImageConstant.imgClarityShoppingCartLine,
              margin: EdgeInsets.only(left: 10.h, top: 13.v, right: 31.h))
        ]);
  }

  /// Section Widget
  Widget _buildSearchFrame(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 19.h),
        decoration: AppDecoration.fillGray5001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle5628,
              height: 178.v,
              width: 174.h,
              margin: EdgeInsets.only(top: 6.v)),
          Padding(
              padding: EdgeInsets.only(top: 37.v, right: 18.h, bottom: 35.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        width: 176.h,
                        child: Text("Shop Quality Health Products",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.titleMedium18
                                .copyWith(height: 1.56))),
                    SizedBox(height: 16.v),
                    CustomElevatedButton(
                        height: 39.v,
                        width: 149.h,
                        text: "Shop Now",
                        buttonStyle: CustomButtonStyles.fillBlueATL101)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildUserFrame(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 40.v,
            width: 414.h,
            child: Stack(alignment: Alignment.center, children: [
              Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                      height: 40.v,
                      width: 25.h,
                      margin: EdgeInsets.only(right: 5.h),
                      decoration: BoxDecoration(
                          color:
                              theme.colorScheme.primaryContainer.withOpacity(1),
                          borderRadius: BorderRadius.circular(10.h),
                          border:
                              Border.all(color: appTheme.gray30001, width: 1.h),
                          boxShadow: [
                            BoxShadow(
                                color: appTheme.blueGray90014,
                                spreadRadius: 2.h,
                                blurRadius: 2.h,
                                offset: Offset(0, 1))
                          ]))),
              Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                      height: 40.v,
                      width: 414.h,
                      child: Stack(alignment: Alignment.centerLeft, children: [
                        Align(
                            alignment: Alignment.center,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                      height: 40.v,
                                      width: 130.h,
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                    height: 40.v,
                                                    width: 130.h,
                                                    decoration: BoxDecoration(
                                                        color: theme.colorScheme
                                                            .primaryContainer
                                                            .withOpacity(1),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.h),
                                                        border: Border.all(
                                                            color: appTheme
                                                                .gray30001,
                                                            width: 1.h),
                                                        boxShadow: [
                                                          BoxShadow(
                                                              color: appTheme
                                                                  .blueGray90014,
                                                              spreadRadius: 2.h,
                                                              blurRadius: 2.h,
                                                              offset:
                                                                  Offset(0, 1))
                                                        ]))),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgThumbsUp,
                                                          height: 20.adaptSize,
                                                          width: 20.adaptSize),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 11.h,
                                                                  top: 2.v),
                                                          child: Text(
                                                              "Top Sellers",
                                                              style: theme
                                                                  .textTheme
                                                                  .titleSmall))
                                                    ]))
                                          ])),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgUserPrimary,
                                      height: 20.adaptSize,
                                      width: 20.adaptSize,
                                      margin:
                                          EdgeInsets.symmetric(vertical: 10.v))
                                ])),
                        CustomOutlinedButton(
                            height: 40.v,
                            width: 98.h,
                            text: "Family",
                            margin: EdgeInsets.only(left: 145.h),
                            leftIcon: Container(
                                margin: EdgeInsets.only(right: 11.h),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgGroup11659,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize)),
                            buttonStyle: CustomButtonStyles.outlineGray,
                            buttonTextStyle: theme.textTheme.titleSmall!,
                            alignment: Alignment.centerLeft),
                        CustomOutlinedButton(
                            height: 40.v,
                            width: 111.h,
                            text: "Children",
                            margin: EdgeInsets.only(right: 45.h),
                            leftIcon: Container(
                                margin: EdgeInsets.only(right: 11.h),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgSettingsPrimary,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize)),
                            buttonStyle: CustomButtonStyles.outlinePrimaryTL101,
                            buttonTextStyle: theme.textTheme.titleSmall!,
                            alignment: Alignment.centerRight)
                      ])))
            ])));
  }

  /// Section Widget
  Widget _buildFeaturedProducts(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 19.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("Featured Products", style: theme.textTheme.titleLarge),
          Padding(
              padding: EdgeInsets.only(top: 13.v, bottom: 10.v),
              child: SizedBox(width: 209.h, child: Divider(indent: 15.h)))
        ]));
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return SizedBox(
        height: 280.v,
        child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 19.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 10.h);
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return Userprofilelist1ItemWidget(onTapUserProfile: () {
                onTapUserProfile(context);
              });
            }));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 19.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 16.v),
              decoration: AppDecoration.outlineIndigo
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgRectangle9155x155,
                        height: 155.adaptSize,
                        width: 155.adaptSize,
                        margin: EdgeInsets.only(left: 2.h)),
                    SizedBox(height: 20.v),
                    Container(
                        width: 166.h,
                        margin: EdgeInsets.only(left: 2.h),
                        child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "Emzoron Tonic (100mg)",
                                  style: CustomTextStyles.titleSmallff2b2a29),
                              TextSpan(text: " "),
                              TextSpan(
                                  text: "4.5 (23)",
                                  style: CustomTextStyles.bodyMediumff3772ff)
                            ]),
                            textAlign: TextAlign.left)),
                    SizedBox(height: 14.v),
                    Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: Text("₦ 2,160.00",
                            style: CustomTextStyles.titleSmallPrimary))
                  ])),
          Container(
              margin: EdgeInsets.only(left: 10.h),
              padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 16.v),
              decoration: AppDecoration.outlineIndigo
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        height: 155.adaptSize,
                        width: 155.adaptSize,
                        child: Stack(alignment: Alignment.topLeft, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle9,
                              height: 155.adaptSize,
                              width: 155.adaptSize,
                              alignment: Alignment.center),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                  width: 32.h,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 4.h, vertical: 2.v),
                                  decoration: AppDecoration.fillBlueA,
                                  child: Text("15%",
                                      style: theme.textTheme.labelMedium)))
                        ])),
                    SizedBox(height: 20.v),
                    SizedBox(
                        width: 160.h,
                        child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "Amatem Softgel (2.5ml)",
                                  style: CustomTextStyles.titleSmallff2b2a29),
                              TextSpan(text: " "),
                              TextSpan(
                                  text: "4.5 (23)",
                                  style: CustomTextStyles.bodyMediumff3772ff)
                            ]),
                            textAlign: TextAlign.left)),
                    SizedBox(height: 14.v),
                    Container(
                        width: 160.h,
                        margin: EdgeInsets.only(right: 4.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("₦ 3,000.00",
                                  style: CustomTextStyles.titleSmallPrimary
                                      .copyWith(
                                          decoration:
                                              TextDecoration.lineThrough)),
                              Text("₦ 2,600.00",
                                  style: CustomTextStyles.titleSmallPrimary)
                            ]))
                  ]))
        ]));
  }

  /// Navigates to the productPageScreen when the action is triggered.
  onTapUserProfile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.productPageScreen);
  }
}

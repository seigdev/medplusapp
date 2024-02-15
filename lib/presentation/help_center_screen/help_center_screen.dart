import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/app_bar/appbar_trailing_image.dart';
import 'package:medplusapp/widgets/app_bar/custom_app_bar.dart';
import 'package:medplusapp/widgets/custom_icon_button.dart';
import 'package:medplusapp/widgets/custom_search_view.dart';
import 'package:medplusapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class HelpCenterScreen extends StatelessWidget {
  HelpCenterScreen({Key? key}) : super(key: key);

  TextEditingController contactSupportController = TextEditingController();

  TextEditingController faqsController = TextEditingController();

  TextEditingController searchController = TextEditingController();

  TextEditingController contactUsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildContactSupportSection(context),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.h, vertical: 15.v),
                      child: Column(children: [
                        _buildFaqsSection(context),
                        SizedBox(height: 15.v),
                        _buildContactUsSection(context),
                        SizedBox(height: 5.v)
                      ]))
                ]))));
  }

  /// Section Widget
  Widget _buildContactSupportSection(BuildContext context) {
    return SizedBox(
        height: 283.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomAppBar(
              height: 231.v,
              actions: [
                AppbarTrailingImage(
                    imagePath: ImageConstant.imgEvaCloseOutline,
                    margin: EdgeInsets.fromLTRB(20.h, 24.v, 20.h, 183.v),
                    onTap: () {
                      onTapEvaCloseOutline(context);
                    })
              ],
              styleType: Style.bgFill_1),
          CustomTextFormField(
              width: 388.h,
              controller: contactSupportController,
              hintText: "Contact our Support Team",
              hintStyle: CustomTextStyles.titleMediumSemiBold_2,
              alignment: Alignment.bottomCenter,
              prefix: Container(
                  padding: EdgeInsets.all(7.h),
                  margin: EdgeInsets.all(15.h),
                  decoration: BoxDecoration(
                      color: appTheme.blueA400,
                      borderRadius: BorderRadius.circular(15.h)),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgTeenyiconssendsolid,
                      height: 16.adaptSize,
                      width: 16.adaptSize)),
              prefixConstraints: BoxConstraints(maxHeight: 113.v),
              maxLines: 5,
              contentPadding:
                  EdgeInsets.only(top: 22.v, right: 30.h, bottom: 22.v)),
          CustomImageView(
              imagePath: ImageConstant.imgGenescorLogoR,
              height: 75.v,
              width: 80.h,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 10.v)),
          Align(
              alignment: Alignment.topLeft,
              child: Container(
                  width: 225.h,
                  margin: EdgeInsets.only(left: 20.h, top: 82.v),
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "Hello Ejiro,\n",
                            style: CustomTextStyles.headlineLargeffffffff),
                        TextSpan(
                            text: "How can we help you today?",
                            style: CustomTextStyles.titleMediumffffffff)
                      ]),
                      textAlign: TextAlign.left)))
        ]));
  }

  /// Section Widget
  Widget _buildFaqsSection(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 17.v),
        decoration: AppDecoration.outlineGray30001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextFormField(
                  controller: faqsController,
                  hintText: "FAQs",
                  hintStyle: CustomTextStyles.titleMediumSemiBold_2,
                  borderDecoration: TextFormFieldStyleHelper.underLineGray,
                  filled: false),
              SizedBox(height: 14.v),
              CustomSearchView(
                  controller: searchController,
                  hintText: "Search for help",
                  contentPadding:
                      EdgeInsets.only(left: 15.h, top: 16.v, bottom: 16.v),
                  borderDecoration: SearchViewStyleHelper.fillGrayTL10,
                  filled: true,
                  fillColor: appTheme.gray10001),
              SizedBox(height: 15.v),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14.h),
                  child: _buildGettingStartedSection(context,
                      title: "About Medplus")),
              SizedBox(height: 10.v),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14.h),
                  child: _buildGettingStartedSection(context,
                      title: "Getting Started")),
              SizedBox(height: 10.v),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14.h),
                  child: _buildGettingStartedSection(context,
                      title: "Appointments")),
              SizedBox(height: 15.v),
              Text("Show more...", style: CustomTextStyles.titleMediumPrimary)
            ]));
  }

  /// Section Widget
  Widget _buildContactUsSection(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 22.v),
        decoration: AppDecoration.outlineGray30001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: CustomTextFormField(
                      controller: contactUsController,
                      hintText: "Contact Us",
                      hintStyle: CustomTextStyles.titleMediumSemiBold_2,
                      textInputAction: TextInputAction.done,
                      borderDecoration: TextFormFieldStyleHelper.underLineGray,
                      filled: false)),
              SizedBox(height: 19.v),
              Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Row(children: [
                    CustomIconButton(
                        height: 30.adaptSize,
                        width: 30.adaptSize,
                        padding: EdgeInsets.all(5.h),
                        decoration: IconButtonStyleHelper.fillBlueATL15,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgCarbonPhone)),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 8.h, top: 6.v, bottom: 6.v),
                        child: Text("+2348333287622",
                            style: theme.textTheme.bodyMedium))
                  ])),
              SizedBox(height: 15.v),
              Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Row(children: [
                    CustomIconButton(
                        height: 30.adaptSize,
                        width: 30.adaptSize,
                        padding: EdgeInsets.all(5.h),
                        decoration: IconButtonStyleHelper.fillBlueATL15,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgClarityEmailLine)),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 8.h, top: 7.v, bottom: 5.v),
                        child: Text("support@medplus.com",
                            style: theme.textTheme.bodyMedium))
                  ]))
            ]));
  }

  /// Common widget
  Widget _buildGettingStartedSection(
    BuildContext context, {
    required String title,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 4.v, bottom: 2.v),
          child: Text(title,
              style: theme.textTheme.bodyMedium!
                  .copyWith(color: appTheme.gray900))),
      CustomIconButton(
          height: 24.adaptSize,
          width: 24.adaptSize,
          padding: EdgeInsets.all(4.h),
          decoration: IconButtonStyleHelper.fillPrimaryContainer,
          child:
              CustomImageView(imagePath: ImageConstant.imgIcRoundArrowBackIos))
    ]);
  }

  /// Navigates to the dashboardScreen when the action is triggered.
  onTapEvaCloseOutline(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.dashboardScreen);
  }
}

import '../ratings_screen/widgets/userprofile6_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:medplusapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:medplusapp/widgets/app_bar/appbar_trailing_iconbutton_four.dart';
import 'package:medplusapp/widgets/app_bar/custom_app_bar.dart';
import 'package:medplusapp/widgets/custom_rating_bar.dart';

class RatingsScreen extends StatelessWidget {
  const RatingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 32.v),
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 19.h),
                        child: Column(children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Overall Ratings",
                                  style:
                                      CustomTextStyles.titleMediumSemiBold_2)),
                          SizedBox(height: 7.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Row(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgStarBlack24dp,
                                    height: 24.v,
                                    width: 23.h),
                                Padding(
                                    padding: EdgeInsets.only(left: 8.h),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "4.56/",
                                              style: CustomTextStyles
                                                  .titleMediumff667398),
                                          TextSpan(
                                              text: "5.0",
                                              style: CustomTextStyles
                                                  .bodyLargeff667398)
                                        ]),
                                        textAlign: TextAlign.left))
                              ])),
                          SizedBox(height: 37.v),
                          SizedBox(
                              height: 200.adaptSize,
                              width: 200.adaptSize,
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: SizedBox(
                                        height: 200.adaptSize,
                                        width: 200.adaptSize,
                                        child: CircularProgressIndicator(
                                            value: 0.5))),
                                Align(
                                    alignment: Alignment.center,
                                    child: SizedBox(
                                        height: 200.adaptSize,
                                        width: 200.adaptSize,
                                        child: CircularProgressIndicator(
                                            value: 0.5))),
                                Align(
                                    alignment: Alignment.center,
                                    child: SizedBox(
                                        height: 200.adaptSize,
                                        width: 200.adaptSize,
                                        child: CircularProgressIndicator(
                                            value: 0.5))),
                                Align(
                                    alignment: Alignment.center,
                                    child: SizedBox(
                                        height: 200.adaptSize,
                                        width: 200.adaptSize,
                                        child: CircularProgressIndicator(
                                            value: 0.5,
                                            backgroundColor: appTheme.amberA400,
                                            color: appTheme.green500))),
                                Align(
                                    alignment: Alignment.center,
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "4.56/",
                                              style: CustomTextStyles
                                                  .titleMediumInterff667398),
                                          TextSpan(
                                              text: "5.0",
                                              style: CustomTextStyles
                                                  .bodyLargeInterff667398)
                                        ]),
                                        textAlign: TextAlign.left))
                              ])),
                          SizedBox(height: 41.v),
                          _buildLegend(context),
                          SizedBox(height: 26.v),
                          _buildLegend1(context),
                          SizedBox(height: 26.v),
                          _buildLegend2(context),
                          SizedBox(height: 26.v),
                          _buildLegend3(context),
                          SizedBox(height: 26.v),
                          _buildLegend4(context),
                          SizedBox(height: 37.v),
                          _buildUserProfile(context)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 70.v,
        leadingWidth: 43.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgGgMenuLeft,
            margin: EdgeInsets.only(left: 19.h, top: 40.v, bottom: 6.v),
            onTap: () {
              onTapGgMenuLeft(context);
            }),
        title: AppbarSubtitle(
            text: "Ratings",
            margin: EdgeInsets.only(left: 35.h, top: 39.v, bottom: 1.v)),
        actions: [
          AppbarTrailingIconbuttonFour(
              imagePath: ImageConstant.imgUserPrimarycontainer30x30,
              margin: EdgeInsets.only(left: 19.h, top: 40.v, right: 19.h))
        ],
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildLegend(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
            height: 8.adaptSize,
            width: 8.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 4.v),
            decoration: BoxDecoration(
                color: appTheme.green500,
                borderRadius: BorderRadius.circular(4.h))),
        CustomRatingBar(initialRating: 5),
        Container(
            height: 16.v,
            width: 156.h,
            decoration: BoxDecoration(
                color: appTheme.gray100,
                borderRadius: BorderRadius.circular(6.h)),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(6.h),
                child: LinearProgressIndicator(
                    value: 0.76,
                    backgroundColor: appTheme.gray100,
                    valueColor: AlwaysStoppedAnimation<Color>(
                        theme.colorScheme.secondaryContainer))))
      ])),
      Padding(
          padding: EdgeInsets.only(left: 19.h),
          child: Text("52%", style: CustomTextStyles.titleSmallSemiBold)),
      Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: Text("(1,820)", style: theme.textTheme.bodyMedium))
    ]);
  }

  /// Section Widget
  Widget _buildLegend1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 8.adaptSize,
                  width: 8.adaptSize,
                  margin: EdgeInsets.only(top: 4.v, bottom: 5.v),
                  decoration: BoxDecoration(
                      color: appTheme.amberA400,
                      borderRadius: BorderRadius.circular(4.h))),
              Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: CustomRatingBar(initialRating: 4, itemCount: 4)),
              Spacer(flex: 51),
              Container(
                  height: 16.v,
                  width: 156.h,
                  decoration: BoxDecoration(
                      color: appTheme.gray100,
                      borderRadius: BorderRadius.circular(6.h)),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(6.h),
                      child: LinearProgressIndicator(
                          value: 0.26,
                          backgroundColor: appTheme.gray100,
                          valueColor: AlwaysStoppedAnimation<Color>(
                              appTheme.blueA400)))),
              Spacer(flex: 48),
              Text("8%", style: CustomTextStyles.titleSmallSemiBold),
              Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text("(280)", style: theme.textTheme.bodyMedium))
            ]));
  }

  /// Section Widget
  Widget _buildLegend2(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 8.adaptSize,
                  width: 8.adaptSize,
                  margin: EdgeInsets.only(top: 4.v, bottom: 5.v),
                  decoration: BoxDecoration(
                      color: appTheme.blueA400,
                      borderRadius: BorderRadius.circular(4.h))),
              Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: CustomRatingBar(initialRating: 3, itemCount: 3)),
              Spacer(),
              Container(
                  height: 16.v,
                  width: 156.h,
                  decoration: BoxDecoration(
                      color: appTheme.gray100,
                      borderRadius: BorderRadius.circular(6.h)),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(6.h),
                      child: LinearProgressIndicator(
                          value: 0.45,
                          backgroundColor: appTheme.gray100,
                          valueColor: AlwaysStoppedAnimation<Color>(
                              appTheme.blueA400)))),
              Padding(
                  padding: EdgeInsets.only(left: 30.h),
                  child:
                      Text("14%", style: CustomTextStyles.titleSmallSemiBold)),
              Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text("(490)", style: theme.textTheme.bodyMedium))
            ]));
  }

  /// Section Widget
  Widget _buildLegend3(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
                height: 8.adaptSize,
                width: 8.adaptSize,
                margin: EdgeInsets.symmetric(vertical: 4.v),
                decoration: BoxDecoration(
                    color: appTheme.purple400,
                    borderRadius: BorderRadius.circular(4.h))),
            CustomImageView(
                imagePath: ImageConstant.imgDiv,
                height: 16.v,
                width: 34.h,
                margin: EdgeInsets.only(left: 16.h)),
            Spacer(),
            Container(
                height: 16.v,
                width: 156.h,
                decoration: BoxDecoration(
                    color: appTheme.gray100,
                    borderRadius: BorderRadius.circular(6.h)),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(6.h),
                    child: LinearProgressIndicator(
                        value: 0.6,
                        backgroundColor: appTheme.gray100,
                        valueColor:
                            AlwaysStoppedAnimation<Color>(appTheme.blueA400))))
          ])),
          Spacer(),
          Text("22%", style: CustomTextStyles.titleSmallSemiBold),
          Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Text("(170)", style: theme.textTheme.bodyMedium))
        ]));
  }

  /// Section Widget
  Widget _buildLegend4(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: SizedBox(
                  height: 16.v,
                  width: 288.h,
                  child: ClipRRect(child: LinearProgressIndicator(value: 0)))),
          Spacer(),
          Text("12%", style: CustomTextStyles.titleSmallSemiBold),
          Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Text("(420)", style: theme.textTheme.bodyMedium))
        ]));
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 18.v);
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return Userprofile6ItemWidget();
        });
  }

  /// Navigates to the doctorSDashboardScreen when the action is triggered.
  onTapGgMenuLeft(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.doctorSDashboardScreen);
  }
}

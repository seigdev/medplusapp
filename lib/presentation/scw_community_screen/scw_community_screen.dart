import '../scw_community_screen/widgets/cardcomponent_item_widget.dart';
import '../scw_community_screen/widgets/rectangle_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:medplusapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:medplusapp/widgets/app_bar/appbar_trailing_iconbutton_three.dart';
import 'package:medplusapp/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:medplusapp/widgets/app_bar/custom_app_bar.dart';
import 'package:medplusapp/widgets/custom_elevated_button.dart';
import 'package:medplusapp/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class ScwCommunityScreen extends StatelessWidget {
  ScwCommunityScreen({Key? key}) : super(key: key);

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
                              hintText: "Search stories",
                              borderDecoration: SearchViewStyleHelper.fillGray,
                              filled: true,
                              fillColor: appTheme.gray10001)),
                      SizedBox(height: 30.v),
                      _buildFive(context),
                      SizedBox(height: 30.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 19.h),
                          child: _buildFrame(context,
                              recentStories: "Trending Stories",
                              seeAll: "See All")),
                      SizedBox(height: 17.v),
                      _buildCardComponent(context),
                      SizedBox(height: 29.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 19.h),
                          child: _buildFrame(context,
                              recentStories: "Recent Stories",
                              seeAll: "See All")),
                      SizedBox(height: 19.v),
                      _buildNonEuSitAmet(context)
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 43.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgGgMenuLeft,
            margin: EdgeInsets.only(left: 19.h, top: 40.v, bottom: 19.v)),
        title: AppbarSubtitle(
            text: "SCW Community",
            margin: EdgeInsets.only(left: 35.h, top: 39.v, bottom: 14.v)),
        actions: [
          AppbarTrailingIconbuttonTwo(
              imagePath: ImageConstant.imgIcBaselineNot,
              margin: EdgeInsets.only(left: 19.h, top: 40.v, right: 13.h)),
          AppbarTrailingIconbuttonThree(
              imagePath: ImageConstant.imgClarityShoppingCartLine,
              margin: EdgeInsets.only(left: 10.h, top: 40.v, right: 32.h))
        ],
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildFive(BuildContext context) {
    return SizedBox(
        height: 184.v,
        width: 390.h,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgImage50,
              height: 184.v,
              width: 390.h,
              radius: BorderRadius.circular(20.h),
              alignment: Alignment.center),
          Align(
              alignment: Alignment.center,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 23.h),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(
                        width: 342.h,
                        child: Text(
                            "Do you have a story you would like to share with the commuity?",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles
                                .titleMediumPrimaryContainerSemiBold
                                .copyWith(height: 1.38))),
                    SizedBox(height: 20.v),
                    CustomElevatedButton(
                        height: 44.v,
                        width: 182.h,
                        text: "Create Story",
                        onPressed: () {
                          onTapCreateStory(context);
                        })
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildCardComponent(BuildContext context) {
    return SizedBox(
        height: 199.v,
        child: ListView.separated(
            padding: EdgeInsets.only(left: 19.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 10.h);
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return CardcomponentItemWidget(onTapCardComponent: () {
                onTapCardComponent(context);
              });
            }));
  }

  /// Section Widget
  Widget _buildNonEuSitAmet(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 19.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 14.h, vertical: 13.v),
                  decoration: AppDecoration.outlineGray5002.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Non eu sit amet euismod",
                            style:
                                CustomTextStyles.titleMediumOnPrimaryContainer),
                        SizedBox(height: 10.v),
                        _buildFrame1(context, bySussexmama: "By Sussexmama"),
                        SizedBox(height: 11.v),
                        Container(
                            width: 282.h,
                            margin: EdgeInsets.only(right: 13.h),
                            child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles
                                    .bodyMediumOnPrimaryContainer
                                    .copyWith(height: 1.43))),
                        SizedBox(height: 8.v),
                        SizedBox(
                            height: 65.v,
                            child: ListView.separated(
                                padding: EdgeInsets.only(right: 16.h),
                                scrollDirection: Axis.horizontal,
                                separatorBuilder: (context, index) {
                                  return SizedBox(width: 5.h);
                                },
                                itemCount: 3,
                                itemBuilder: (context, index) {
                                  return RectangleItemWidget();
                                })),
                        SizedBox(height: 10.v),
                        Text("28 minutes ago",
                            style: CustomTextStyles.bodySmallGray600),
                        SizedBox(height: 10.v),
                        _buildFrame2(context, commentCount: "2", likeCount: "5")
                      ]))),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 10.h),
              child: IntrinsicWidth(
                  child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 14.h, vertical: 13.v),
                      decoration: AppDecoration.outlineGray5002.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Non eu sit amet euismod",
                                style: CustomTextStyles
                                    .titleMediumOnPrimaryContainer),
                            SizedBox(height: 10.v),
                            _buildFrame1(context,
                                bySussexmama: "By Sussexmama"),
                            SizedBox(height: 11.v),
                            SizedBox(
                                width: 296.h,
                                child: Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .bodyMediumOnPrimaryContainer
                                        .copyWith(height: 1.43))),
                            SizedBox(height: 8.v),
                            Padding(
                                padding: EdgeInsets.only(right: 16.h),
                                child: Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgRectangle5629,
                                      height: 65.v,
                                      width: 90.h,
                                      radius: BorderRadius.circular(5.h)),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgRectangle5630,
                                      height: 65.v,
                                      width: 90.h,
                                      radius: BorderRadius.circular(5.h),
                                      margin: EdgeInsets.only(left: 5.h)),
                                  Container(
                                      height: 65.v,
                                      width: 90.h,
                                      margin: EdgeInsets.only(left: 5.h),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle5631,
                                                height: 65.v,
                                                width: 90.h,
                                                radius:
                                                    BorderRadius.circular(5.h),
                                                alignment: Alignment.center),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Text("+3",
                                                    style: CustomTextStyles
                                                        .titleMediumPrimaryContainerSemiBold))
                                          ]))
                                ])),
                            SizedBox(height: 10.v),
                            Text("28 minutes ago",
                                style: CustomTextStyles.bodySmallGray600),
                            SizedBox(height: 10.v),
                            _buildFrame2(context,
                                commentCount: "2", likeCount: "5")
                          ]))))
        ]));
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String recentStories,
    required String seeAll,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(recentStories,
          style:
              CustomTextStyles.titleMedium18.copyWith(color: appTheme.gray900)),
      Spacer(),
      Padding(
          padding: EdgeInsets.symmetric(vertical: 3.v),
          child: Text(seeAll,
              style: CustomTextStyles.labelLargeBlueA400
                  .copyWith(color: appTheme.blueA400))),
      CustomImageView(
          imagePath: ImageConstant.imgStatusSkippedBlueA400,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(left: 5.h))
    ]);
  }

  /// Common widget
  Widget _buildFrame1(
    BuildContext context, {
    required String bySussexmama,
  }) {
    return Row(children: [
      CustomImageView(
          imagePath: ImageConstant.imgEllipse13,
          height: 20.adaptSize,
          width: 20.adaptSize,
          radius: BorderRadius.circular(10.h)),
      Padding(
          padding: EdgeInsets.only(left: 10.h, top: 3.v, bottom: 2.v),
          child: Text(bySussexmama,
              style: CustomTextStyles.bodySmallGray600
                  .copyWith(color: appTheme.gray600)))
    ]);
  }

  /// Common widget
  Widget _buildFrame2(
    BuildContext context, {
    required String commentCount,
    required String likeCount,
  }) {
    return Row(children: [
      CustomImageView(
          imagePath: ImageConstant.imgFaSolidComment,
          height: 16.adaptSize,
          width: 16.adaptSize),
      Padding(
          padding: EdgeInsets.only(left: 6.h),
          child: Text(commentCount,
              style: CustomTextStyles.bodySmallOnPrimaryContainer
                  .copyWith(color: theme.colorScheme.onPrimaryContainer))),
      CustomImageView(
          imagePath: ImageConstant.imgLoveLikeSvgrepoCom,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.only(left: 10.h)),
      Padding(
          padding: EdgeInsets.only(left: 6.h),
          child: Text(likeCount,
              style: CustomTextStyles.bodySmallOnPrimaryContainer
                  .copyWith(color: theme.colorScheme.onPrimaryContainer)))
    ]);
  }

  /// Navigates to the storyScreen when the action is triggered.
  onTapCardComponent(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.storyScreen);
  }

  /// Navigates to the createStoryScreen when the action is triggered.
  onTapCreateStory(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.createStoryScreen);
  }
}

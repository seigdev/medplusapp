import '../consultations_screen/widgets/userprofile3_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:medplusapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:medplusapp/widgets/app_bar/appbar_trailing_iconbutton_three.dart';
import 'package:medplusapp/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:medplusapp/widgets/app_bar/custom_app_bar.dart';
import 'package:medplusapp/widgets/custom_floating_button.dart';
import 'package:medplusapp/widgets/custom_search_view.dart';

class ConsultationsScreen extends StatefulWidget {
  ConsultationsScreen({Key? key}) : super(key: key);

  @override
  State<ConsultationsScreen> createState() => _ConsultationsScreenState();
}

class _ConsultationsScreenState extends State<ConsultationsScreen> {
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
            padding: EdgeInsets.only(top: 30.v),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 19.h),
              child: Column(
                children: [
                  CustomSearchView(
                    controller: searchController,
                    hintText: "Search",
                  ),
                  SizedBox(height: 30.v),
                  _buildUserProfile(context),
                  SizedBox(height: 15.v),
                  _buildDrAdaAwele(context),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: _buildFloatingActionButton(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 43.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgGgMenuLeft,
        margin: EdgeInsets.only(
          left: 19.h,
          top: 40.v,
          bottom: 19.v,
        ),
      ),
      title: AppbarSubtitle(
        text: "Consultations",
        margin: EdgeInsets.only(left: 35.h),
      ),
      actions: [
        AppbarTrailingIconbuttonTwo(
          imagePath: ImageConstant.imgIcBaselineNot,
          margin: EdgeInsets.only(
            left: 19.h,
            top: 40.v,
            right: 13.h,
          ),
        ),
        AppbarTrailingIconbuttonThree(
          imagePath: ImageConstant.imgClarityShoppingCartLine,
          margin: EdgeInsets.only(
            left: 10.h,
            top: 40.v,
            right: 32.h,
          ),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 3.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 15.v,
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return Userprofile3ItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildDrAdaAwele(BuildContext context) {
    return SizedBox(
      height: 211.v,
      width: 387.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 14.h,
                vertical: 9.v,
              ),
              decoration: AppDecoration.outlineGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle1333,
                        height: 60.adaptSize,
                        width: 60.adaptSize,
                        radius: BorderRadius.circular(
                          10.h,
                        ),
                        margin: EdgeInsets.only(top: 10.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 21.h,
                          top: 19.v,
                          bottom: 9.v,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dr. Ada Awele",
                              style: CustomTextStyles.titleMediumSemiBold_2,
                            ),
                            SizedBox(height: 4.v),
                            Text(
                              "Haematologist",
                              style: CustomTextStyles.bodyMediumGray600,
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      CustomImageView(
                        imagePath: ImageConstant.imgIcBaselineMoreHorizGray900,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(bottom: 46.v),
                      ),
                    ],
                  ),
                  SizedBox(height: 15.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 9.h,
                          vertical: 8.v,
                        ),
                        decoration: AppDecoration.outlineIndigo100.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Text(
                          "12/12/2022",
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 9.h,
                          vertical: 8.v,
                        ),
                        decoration: AppDecoration.outlineIndigo100.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Text(
                          "09:30 AM",
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 9.h,
                          vertical: 8.v,
                        ),
                        decoration: AppDecoration.outlineIndigo100.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Text(
                          "10 mins",
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4.v),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 14.h,
                vertical: 9.v,
              ),
              decoration: AppDecoration.outlineGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle1333,
                        height: 60.adaptSize,
                        width: 60.adaptSize,
                        radius: BorderRadius.circular(
                          10.h,
                        ),
                        margin: EdgeInsets.only(top: 10.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 21.h,
                          top: 20.v,
                          bottom: 10.v,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dr. Rashida Mohammed",
                              style: CustomTextStyles.titleMediumSemiBold_2,
                            ),
                            SizedBox(height: 5.v),
                            Text(
                              "Haematologist",
                              style: CustomTextStyles.bodyMediumGray600,
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      CustomImageView(
                        imagePath: ImageConstant.imgIcBaselineMoreHorizGray900,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(bottom: 46.v),
                      ),
                    ],
                  ),
                  SizedBox(height: 15.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 93.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.h,
                          vertical: 9.v,
                        ),
                        decoration: AppDecoration.outlineIndigo100.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Text(
                          "12/12/2022",
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                      Container(
                        width: 84.h,
                        margin: EdgeInsets.only(left: 10.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.h,
                          vertical: 9.v,
                        ),
                        decoration: AppDecoration.outlineIndigo100.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Text(
                          "09:30 AM",
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: 92.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.h,
                          vertical: 9.v,
                        ),
                        decoration: AppDecoration.fillPrimary1.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Text(
                          "Declined",
                          style: CustomTextStyles.titleSmallPrimary,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4.v),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
      height: 60,
      width: 60,
      backgroundColor: theme.colorScheme.primaryContainer.withOpacity(1),
      child: CustomImageView(
        imagePath: ImageConstant.imgIcBaselinePlus,
        height: 30.0.v,
        width: 30.0.h,
      ),
    );
  }
}

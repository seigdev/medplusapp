// ignore_for_file: must_be_immutable

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:medplusapp/presentation/side_navigation_draweritem/side_navigation_draweritem.dart';

import '../dashboard_screen/widgets/ninetynine_item_widget.dart';
import '../dashboard_screen/widgets/userprofilelist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:medplusapp/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:medplusapp/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:medplusapp/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:medplusapp/widgets/app_bar/custom_app_bar.dart';

import 'package:medplusapp/widgets/custom_search_view.dart';
import 'dart:core';

import '../wallet_screen/provider/wallet_provider.dart';

class DashboardScreen extends ConsumerStatefulWidget {
  const DashboardScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DashboardScreenState();
}

class _DashboardScreenState extends ConsumerState<DashboardScreen> {
  TextEditingController searchController = TextEditingController();

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    ref.watch(getwalletProvider);
    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset: false,
      backgroundColor: appTheme.whiteA700,
      drawer: SideNavigationDraweritem(),
      appBar: _buildAppBar(context),
      body: SafeArea(
        child: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 6.v),
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Padding(
              padding: EdgeInsets.only(left: 19, bottom: 7.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 19.h),
                      child: Text(
                        "Good morning, Stella",
                        style: CustomTextStyles.headlineSmallSemiBold,
                      ),
                    ),
                  ),
                  SizedBox(height: 29.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 19.h),
                    child: CustomSearchView(
                      controller: searchController,
                      hintText: "Search",
                      borderDecoration: SearchViewStyleHelper.fillGray,
                      filled: true,
                      fillColor: appTheme.gray10001,
                    ),
                  ),
                  SizedBox(height: 30.v),
                  _buildNinetyNine(context),
                  SizedBox(height: 30.v),
                  _buildFrameStack(context),
                  SizedBox(height: 31.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 19.h),
                      child: Text(
                        "Upcoming Appointment",
                        style: CustomTextStyles.titleMedium18,
                      ),
                    ),
                  ),
                  SizedBox(height: 19.v),
                  _buildTimeRow(context),
                  SizedBox(height: 29.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 19.h),
                      child: Text(
                        "Current Medications",
                        style: CustomTextStyles.titleMedium18,
                      ),
                    ),
                  ),
                  SizedBox(height: 21.v),
                  _buildUserProfileList(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 78.v,
      leadingWidth: 43.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgGgMenuLeft,
        onTap: () {
          drawer(context);
        },
        margin: EdgeInsets.only(
          left: 19.h,
          top: 15.v,
          bottom: 15.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleThree(
        text: "Tuesday, 5 December",
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgIcBaselineNot,
          margin: EdgeInsets.only(
            left: 17.h,
            top: 16.v,
            right: 15.h,
          ),
        ),
        AppbarTrailingIconbuttonOne(
          imagePath: ImageConstant.imgClarityShoppingCartLine,
          margin: EdgeInsets.only(
            left: 10.h,
            top: 16.v,
            right: 32.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildNinetyNine(BuildContext context) {
    return SizedBox(
      height: 70.v,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 19.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 30.h,
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return NinetynineItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameStack(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      color: appTheme.blue5001,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Container(
        height: 184.v,
        width: 390.h,
        decoration: AppDecoration.fillBlue.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgBeautifulAfric,
              height: 184.v,
              width: 225.h,
              alignment: Alignment.centerRight,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 19.h,
                  right: 149.h,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 222.h,
                      child: Text(
                        "Take folic acid supplements daily and choose a healthy diet",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.titleLarge!.copyWith(
                          height: 1.40,
                        ),
                      ),
                    ),
                    SizedBox(height: 13.v),
                    Text(
                      "#sicklecellwarriors",
                      style: theme.textTheme.titleSmall,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTimeRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 18.h),
      padding: EdgeInsets.symmetric(vertical: 10.v),
      decoration: AppDecoration.fillBlueA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 6.v,
              bottom: 5.v,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 19.h,
              vertical: 21.v,
            ),
            decoration: AppDecoration.fillPrimaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder25,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "12",
                  style: theme.textTheme.displaySmall,
                ),
                SizedBox(height: 2.v),
                Text(
                  "Tue",
                  style: CustomTextStyles.titleMediumPrimaryContainer,
                ),
              ],
            ),
          ),
          Container(
            height: 108.v,
            width: 262.h,
            margin: EdgeInsets.only(bottom: 14.v),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(right: 6.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "09:30 AM",
                          style: CustomTextStyles.titleMediumPrimaryContainer,
                        ),
                        SizedBox(height: 14.v),
                        Text(
                          "Dr. Rashida Mohammed",
                          style: CustomTextStyles.titleMediumPrimaryContainer,
                        ),
                        SizedBox(height: 6.v),
                        Text(
                          "Haematologist",
                          style: CustomTextStyles.titleMediumPrimaryContainer,
                        ),
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgIcBaselineMoreHoriz,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.topRight,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return SizedBox(
      height: 148.v,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 19.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 15.h,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return UserprofilelistItemWidget();
        },
      ),
    );
  }

  onTapMenuoneone() {
    _scaffoldKey.currentState?.openDrawer();
  }

  onTapNotific() {
    _scaffoldKey.currentState?.openDrawer();
  }

  /// Opens the drawer of the current scaffold using the [_route to cart page] instance
  /// variable.
  onTapCart() {
    //Get.toNamed(
    // AppRoutes.cartScreen,
    //  );
  }
  drawer(BuildContext) {
    _scaffoldKey.currentState?.openDrawer();
  }
}

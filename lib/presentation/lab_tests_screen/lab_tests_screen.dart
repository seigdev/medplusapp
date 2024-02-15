import '../lab_tests_screen/widgets/orderdetails1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:medplusapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:medplusapp/widgets/app_bar/appbar_trailing_iconbutton_three.dart';
import 'package:medplusapp/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:medplusapp/widgets/app_bar/custom_app_bar.dart';
import 'package:medplusapp/widgets/custom_elevated_button.dart';
import 'package:medplusapp/widgets/custom_icon_button.dart';
import 'package:medplusapp/widgets/custom_outlined_button.dart';
import 'package:medplusapp/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class LabTestsScreen extends StatelessWidget {
  LabTestsScreen({Key? key}) : super(key: key);

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
                    padding: EdgeInsets.only(top: 14.v),
                    child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 19.h),
                        child: Column(children: [
                          CustomSearchView(
                              controller: searchController, hintText: "Search"),
                          SizedBox(height: 30.v),
                          SizedBox(
                              height: 686.v,
                              width: 387.h,
                              child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    _buildBookLabTest(context),
                                    _buildOrderDetails(context)
                                  ])),
                          SizedBox(height: 10.v),
                          _buildFrame(context)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 81.v,
        leadingWidth: 43.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgGgMenuLeft,
            margin: EdgeInsets.only(left: 19.h, top: 14.v, bottom: 17.v)),
        title: AppbarSubtitle(
            text: "Lab Tests", margin: EdgeInsets.only(left: 35.h)),
        actions: [
          AppbarTrailingIconbuttonTwo(
              imagePath: ImageConstant.imgIcBaselineNot,
              margin: EdgeInsets.only(left: 19.h, top: 14.v, right: 11.h)),
          AppbarTrailingIconbuttonThree(
              imagePath: ImageConstant.imgClarityShoppingCartLine,
              margin: EdgeInsets.only(left: 10.h, top: 14.v, right: 30.h))
        ]);
  }

  /// Section Widget
  Widget _buildBookLabTest(BuildContext context) {
    return CustomOutlinedButton(
        width: 177.h,
        text: "Book Lab Test",
        margin: EdgeInsets.only(right: 8.h),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 10.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgIcBaselinePlus,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        buttonStyle: CustomButtonStyles.outlinePrimaryTL10,
        buttonTextStyle: CustomTextStyles.titleMediumPrimary,
        onPressed: () {
          onTapBookLabTest(context);
        },
        alignment: Alignment.bottomRight);
  }

  /// Section Widget
  Widget _buildOrderDetails(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(bottom: 5.v),
            child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 15.v);
                },
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Orderdetails1ItemWidget();
                })));
  }

  /// Section Widget
  Widget _buildCancelled(BuildContext context) {
    return CustomElevatedButton(
        height: 34.v,
        width: 100.h,
        text: "Cancelled",
        margin: EdgeInsets.only(left: 190.h, top: 3.v, bottom: 3.v),
        buttonStyle: CustomButtonStyles.fillPrimaryTL10,
        buttonTextStyle: CustomTextStyles.titleSmallPrimary);
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 3.h),
        padding: EdgeInsets.all(14.h),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Row(children: [
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 4.v),
                    child: Text("Order ID: 166523",
                        style: theme.textTheme.titleSmall)),
                Spacer(),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.v),
                    child: Text("23/10/2022 | 9:00 AM",
                        style: CustomTextStyles.bodySmallGray400)),
                CustomImageView(
                    imagePath: ImageConstant.imgIcBaselineMoreHorizGray900,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(left: 22.h))
              ]),
              SizedBox(height: 10.v),
              Row(children: [
                Padding(
                    padding: EdgeInsets.only(bottom: 2.v),
                    child: CustomIconButton(
                        height: 35.adaptSize,
                        width: 35.adaptSize,
                        padding: EdgeInsets.all(7.h),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgLabFlaskSvgrepoCom))),
                Padding(
                    padding: EdgeInsets.only(left: 15.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Blood count (Haematology)",
                              style: theme.textTheme.bodyMedium),
                          SizedBox(height: 5.v),
                          Text("Rosebud Diagnostics Centre",
                              style: CustomTextStyles.bodyMediumBluegray500)
                        ]))
              ]),
              SizedBox(height: 15.v),
              Row(children: [
                SizedBox(
                    width: 62.h,
                    child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Amount\n",
                              style: CustomTextStyles.bodyMediumff828282),
                          TextSpan(
                              text: "₦ 5,000",
                              style:
                                  CustomTextStyles.titleMediumff2b2a29SemiBold)
                        ]),
                        textAlign: TextAlign.left)),
                _buildCancelled(context)
              ])
            ]));
  }

  /// Navigates to the bookLabTestScreen when the action is triggered.
  onTapBookLabTest(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bookLabTestScreen);
  }
}

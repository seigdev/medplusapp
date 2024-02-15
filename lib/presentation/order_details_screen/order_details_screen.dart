import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:medplusapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:medplusapp/widgets/app_bar/custom_app_bar.dart';
import 'package:medplusapp/widgets/custom_elevated_button.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 20.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildDeliveredRow(context),
                      SizedBox(height: 24.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("Shipping Information",
                              style: theme.textTheme.bodyMedium)),
                      SizedBox(height: 5.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("Stella Adebayo",
                              style: theme.textTheme.titleMedium)),
                      SizedBox(height: 6.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("stella.adebayo@gmail.com",
                              style: theme.textTheme.titleMedium)),
                      SizedBox(height: 4.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("09038873221",
                              style: theme.textTheme.titleMedium)),
                      SizedBox(height: 7.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text(
                              "11, Adesanya Cresent, Lekki Phase 1, Lagos",
                              style: theme.textTheme.titleMedium)),
                      SizedBox(height: 24.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("Payment Method",
                              style: theme.textTheme.bodyMedium)),
                      SizedBox(height: 3.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("Wallet",
                              style: theme.textTheme.titleMedium)),
                      SizedBox(height: 25.v),
                      Divider(
                          color: appTheme.gray30001,
                          indent: 4.h,
                          endIndent: 4.h),
                      SizedBox(height: 25.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h, right: 6.h),
                          child: _buildFrameRow(context,
                              itemTotal: "Panadol Extra (500mg) x1",
                              price: "₦5,000")),
                      SizedBox(height: 19.v),
                      _buildFrameRow2(context),
                      SizedBox(height: 23.v),
                      Divider(
                          color: appTheme.gray30001,
                          indent: 4.h,
                          endIndent: 4.h),
                      SizedBox(height: 23.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h, right: 6.h),
                          child: _buildFrameRow(context,
                              itemTotal: "Item Total:", price: "₦10,000")),
                      SizedBox(height: 15.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h, right: 6.h),
                          child: _buildFrameRow(context,
                              itemTotal: "Shipping Fee:", price: "₦1,500")),
                      SizedBox(height: 13.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h, right: 6.h),
                          child: _buildFrameRow(context,
                              itemTotal: "VAT:", price: "₦250")),
                      SizedBox(height: 14.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h, right: 6.h),
                          child: _buildFrameRow(context,
                              itemTotal: "Total:", price: "₦11,750")),
                      SizedBox(height: 23.v),
                      Divider(
                          color: appTheme.gray30001,
                          indent: 4.h,
                          endIndent: 4.h),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildReOrder(context)));
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
            text: "Order Details", margin: EdgeInsets.only(left: 35.h)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildDeliveredRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("#7788166523", style: CustomTextStyles.titleMediumSemiBold),
            SizedBox(height: 5.v),
            Text("23/10/2022 | 9:00 AM", style: theme.textTheme.bodyMedium)
          ]),
          CustomElevatedButton(
              height: 34.v,
              width: 97.h,
              text: "Delivered",
              margin: EdgeInsets.only(top: 4.v, bottom: 5.v),
              buttonStyle: CustomButtonStyles.fillGreen,
              buttonTextStyle: CustomTextStyles.titleSmallGreen500)
        ]));
  }

  /// Section Widget
  Widget _buildFrameRow2(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 4.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("Prostan Eyedrop (300ml) x2", style: theme.textTheme.bodyLarge),
          Text("₦5,000", style: theme.textTheme.titleMedium)
        ]));
  }

  /// Section Widget
  Widget _buildReOrder(BuildContext context) {
    return CustomElevatedButton(
        height: 43.v,
        text: "Re-Order",
        margin: EdgeInsets.only(left: 19.h, right: 19.h, bottom: 25.v));
  }

  /// Common widget
  Widget _buildFrameRow(
    BuildContext context, {
    required String itemTotal,
    required String price,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Text(itemTotal,
              style: theme.textTheme.bodyLarge!
                  .copyWith(color: appTheme.gray900))),
      Text(price,
          style: theme.textTheme.titleMedium!.copyWith(color: appTheme.gray900))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

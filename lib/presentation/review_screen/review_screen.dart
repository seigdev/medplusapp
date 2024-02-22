import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:medplusapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:medplusapp/widgets/app_bar/custom_app_bar.dart';
import 'package:medplusapp/widgets/custom_elevated_button.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 20.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildFrame1(context),
                      SizedBox(height: 31.v),
                      Text("Please confirm and submit your order",
                          style: theme.textTheme.bodyLarge),
                      SizedBox(height: 29.v),
                      _buildFrame5(context),
                      SizedBox(height: 30.v),
                      Row(children: [
                        Padding(
                            padding: EdgeInsets.only(top: 2.v),
                            child: Text("Payment",
                                style: theme.textTheme.titleMedium)),
                        CustomImageView(
                            imagePath: ImageConstant.imgAntDesignEditOutlined,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            margin: EdgeInsets.only(left: 20.h))
                      ]),
                      SizedBox(height: 8.v),
                      Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgUserYellow800,
                            height: 20.v,
                            width: 24.h),
                        Padding(
                            padding: EdgeInsets.only(left: 19.h),
                            child: Text("**** **** **** 6098",
                                style: CustomTextStyles.bodyMediumBlack900))
                      ]),
                      SizedBox(height: 14.v),
                      Text("01/24", style: CustomTextStyles.bodyMediumBlack900),
                      SizedBox(height: 19.v),
                      Divider(color: appTheme.gray30001),
                      SizedBox(height: 19.v),
                      Row(children: [
                        Padding(
                            padding: EdgeInsets.only(top: 1.v),
                            child: Text("Shipping Address",
                                style: theme.textTheme.titleMedium)),
                        CustomImageView(
                            imagePath: ImageConstant.imgAntDesignEditOutlined,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            margin: EdgeInsets.only(left: 20.h))
                      ]),
                      SizedBox(height: 12.v),
                      Container(
                          width: 302.h,
                          margin: EdgeInsets.only(right: 88.h),
                          child: Text(
                              "Ejiro Osarobo\nejiroosarobo@gmail.com\n080553489445\n112 road, Gowon Estate, Ikeja, Lagos, Nigeria",
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyMedium!
                                  .copyWith(height: 1.79))),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildMakePayment(context)));
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
            text: "Checkout", margin: EdgeInsets.only(left: 35.h)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 17.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgTeenyiconsTickCircleSolid,
                  height: 24.adaptSize,
                  width: 24.adaptSize),
              Padding(
                  padding: EdgeInsets.only(left: 5.h, top: 4.v, bottom: 2.v),
                  child: Text("Shipping", style: theme.textTheme.titleSmall)),
              Padding(
                  padding: EdgeInsets.only(top: 12.v, bottom: 11.v),
                  child: SizedBox(
                      width: 35.h,
                      child: Divider(color: appTheme.gray400, indent: 15.h))),
              CustomImageView(
                  imagePath: ImageConstant.imgTeenyiconsTickCircleSolid,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(left: 15.h)),
              Padding(
                  padding: EdgeInsets.only(left: 5.h, top: 5.v),
                  child: Text("Payment", style: theme.textTheme.titleSmall)),
              Padding(
                  padding: EdgeInsets.only(top: 12.v, bottom: 11.v),
                  child: SizedBox(
                      width: 35.h,
                      child: Divider(color: appTheme.gray400, indent: 15.h))),
              Container(
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(left: 15.h),
                  padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 3.v),
                  decoration: AppDecoration.fillGreen.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: Text("3",
                      style:
                          CustomTextStyles.titleSmallPrimaryContainerSemiBold)),
              Padding(
                  padding: EdgeInsets.only(left: 5.h, top: 3.v, bottom: 3.v),
                  child: Text("Review", style: theme.textTheme.titleSmall))
            ])));
  }

  /// Section Widget
  Widget _buildFrame5(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 16.v),
        decoration: AppDecoration.fillGray50
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Order Summary", style: CustomTextStyles.titleMedium18),
              SizedBox(height: 19.v),
              Padding(
                  padding: EdgeInsets.only(right: 1.h),
                  child: _buildFrame(context,
                      shipping: "Subtotal", price: "₦ 5,600")),
              SizedBox(height: 13.v),
              Padding(
                  padding: EdgeInsets.only(right: 1.h),
                  child: _buildFrame(context,
                      shipping: "Shipping", price: "₦ 1,500")),
              SizedBox(height: 10.v),
              Divider(color: appTheme.gray300),
              SizedBox(height: 10.v),
              Padding(
                  padding: EdgeInsets.only(right: 1.h),
                  child:
                      _buildFrame(context, shipping: "Total", price: "₦ 7,350"))
            ]));
  }

  /// Section Widget
  Widget _buildMakePayment(BuildContext context) {
    return CustomElevatedButton(
        height: 52.v,
        text: "Make Payment",
        margin: EdgeInsets.only(left: 19.h, right: 19.h, bottom: 30.v),
        onPressed: () {
          onTapMakePayment(context);
        });
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String shipping,
    required String price,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(shipping,
          style: CustomTextStyles.bodyMediumOnError
              .copyWith(color: theme.colorScheme.onError)),
      Text(price,
          style: theme.textTheme.titleSmall!.copyWith(color: appTheme.gray900))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the successScreen when the action is triggered.
  onTapMakePayment(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.successScreen);
  }
}

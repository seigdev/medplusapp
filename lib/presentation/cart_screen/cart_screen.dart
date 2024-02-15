import '../cart_screen/widgets/productcardlist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:medplusapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:medplusapp/widgets/app_bar/custom_app_bar.dart';
import 'package:medplusapp/widgets/custom_elevated_button.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 19.v),
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          _buildItemsInCart(context),
                          SizedBox(height: 23.v),
                          _buildProductCardList(context),
                          SizedBox(height: 29.v),
                          _buildRelatedProducts(context),
                          SizedBox(height: 19.v),
                          _buildHorizontalScroll(context),
                          SizedBox(height: 29.v),
                          _buildRecommended(context),
                          SizedBox(height: 19.v),
                          _buildCheckout7800(context)
                        ]))))));
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
            text: "Cart",
            margin: EdgeInsets.only(left: 35.h, top: 37.v, bottom: 16.v)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildItemsInCart(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 19.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.only(bottom: 2.v),
              child: Text("2 Items in Cart",
                  style: CustomTextStyles.titleMediumSemiBold_2)),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgStatusSkipped,
              height: 20.adaptSize,
              width: 20.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 2.h, top: 4.v),
              child: Text("Continue Shopping",
                  style: CustomTextStyles.bodyMediumBlueA400))
        ]));
  }

  /// Section Widget
  Widget _buildProductCardList(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 19.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return Padding(
                  padding: EdgeInsets.symmetric(vertical: 7.0.v),
                  child: SizedBox(
                      width: 390.h,
                      child: Divider(
                          height: 1.v,
                          thickness: 1.v,
                          color: appTheme.gray30001)));
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return ProductcardlistItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildRelatedProducts(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 19.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("Related Products", style: theme.textTheme.bodyMedium),
          Padding(
              padding: EdgeInsets.only(top: 8.v, bottom: 7.v),
              child: SizedBox(width: 272.h, child: Divider(indent: 9.h)))
        ]));
  }

  /// Section Widget
  Widget _buildHorizontalScroll(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 19.h),
        child: IntrinsicWidth(
            child: SizedBox(
                height: 208.v,
                width: 409.h,
                child: Stack(alignment: Alignment.centerRight, children: [
                  Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                          height: 207.v,
                          width: 409.h,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                    height: 207.v,
                                    width: 159.h,
                                    decoration: BoxDecoration(
                                        color: theme
                                            .colorScheme.primaryContainer
                                            .withOpacity(1),
                                        borderRadius:
                                            BorderRadius.circular(10.h),
                                        border: Border.all(
                                            color: appTheme.indigo100,
                                            width: 1.h)))),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 13.h, top: 10.v, bottom: 87.v),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                              height: 110.v,
                                              width: 133.h,
                                              child: Stack(
                                                  alignment: Alignment.topLeft,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgRectangle9,
                                                        height: 110.v,
                                                        width: 133.h,
                                                        alignment:
                                                            Alignment.center),
                                                    Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Container(
                                                            width: 27.h,
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        3.h,
                                                                    vertical:
                                                                        1.v),
                                                            decoration:
                                                                AppDecoration
                                                                    .fillBlueA,
                                                            child: Text("15%",
                                                                style: theme
                                                                    .textTheme
                                                                    .labelSmall)))
                                                  ])),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgRectangle9155x155,
                                              height: 110.v,
                                              width: 133.h)
                                        ]))),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 13.h, right: 294.h, bottom: 8.v),
                                child: _buildFrameNineteen(context,
                                    amatemSoftgelml:
                                        "Amatem Softgel (2.5ml) 4.5 (23)",
                                    oldPrice: "₦ 3,000",
                                    price: "₦ 2,600"))
                          ]))),
                  Padding(
                      padding: EdgeInsets.only(left: 169.h, right: 81.h),
                      child: _buildFrameTwentyTwo(context,
                          emzoronTonicmg: "Emzoron Tonic (100mg) 4.5 (23)",
                          price: "₦ 2,160")),
                  Padding(
                      padding: EdgeInsets.only(left: 338.h),
                      child: _buildFrameTwentyThree(context,
                          emzoronTonicmg: "Emzoron Tonic (100mg) 4.5 (23)",
                          price: "₦ 2,160"))
                ]))));
  }

  /// Section Widget
  Widget _buildRecommended(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("Recommended", style: theme.textTheme.bodyMedium),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(top: 8.v, bottom: 7.v),
                  child: Divider(indent: 9.h)))
        ]));
  }

  /// Section Widget
  Widget _buildCheckout7800(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 19.h),
        child: IntrinsicWidth(
            child: SizedBox(
                height: 208.v,
                width: 409.h,
                child: Stack(alignment: Alignment.centerRight, children: [
                  Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                          height: 207.v,
                          width: 409.h,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                    height: 207.v,
                                    width: 159.h,
                                    decoration: BoxDecoration(
                                        color: theme
                                            .colorScheme.primaryContainer
                                            .withOpacity(1),
                                        borderRadius:
                                            BorderRadius.circular(10.h),
                                        border: Border.all(
                                            color: appTheme.indigo100,
                                            width: 1.h)))),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 13.h, top: 10.v, bottom: 87.v),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                              height: 110.v,
                                              width: 133.h,
                                              child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    Align(
                                                        alignment: Alignment
                                                            .topLeft,
                                                        child: Container(
                                                            margin: EdgeInsets
                                                                .only(
                                                                    right: 105
                                                                        .h),
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        3.h),
                                                            decoration:
                                                                AppDecoration
                                                                    .fillBlueA,
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment.start,
                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                children: [
                                                                  SizedBox(
                                                                      height:
                                                                          2.v),
                                                                  Text("15%",
                                                                      style: theme
                                                                          .textTheme
                                                                          .labelSmall)
                                                                ]))),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgRectangle9,
                                                        height: 110.v,
                                                        width: 133.h,
                                                        alignment:
                                                            Alignment.center)
                                                  ])),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgRectangle9155x155,
                                              height: 110.v,
                                              width: 133.h)
                                        ]))),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 13.h, right: 294.h, bottom: 8.v),
                                child: _buildFrameNineteen(context,
                                    amatemSoftgelml:
                                        "Amatem Softgel (2.5ml) 4.5 (23)",
                                    oldPrice: "₦ 3,000",
                                    price: "₦ 2,600"))
                          ]))),
                  Padding(
                      padding: EdgeInsets.only(left: 169.h, right: 81.h),
                      child: _buildFrameTwentyTwo(context,
                          emzoronTonicmg: "Emzoron Tonic (100mg) 4.5 (23)",
                          price: "₦ 2,160")),
                  Padding(
                      padding: EdgeInsets.only(left: 338.h),
                      child: _buildFrameTwentyThree(context,
                          emzoronTonicmg: "Emzoron Tonic (100mg) 4.5 (23)",
                          price: "₦ 2,600")),
                  CustomElevatedButton(
                      height: 52.v,
                      width: 390.h,
                      text: "Checkout (₦ 7,800)",
                      margin: EdgeInsets.only(bottom: 60.v),
                      alignment: Alignment.bottomLeft)
                ]))));
  }

  /// Common widget
  Widget _buildFrameNineteen(
    BuildContext context, {
    required String amatemSoftgelml,
    required String oldPrice,
    required String price,
  }) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: 95.h,
              margin: EdgeInsets.only(right: 6.h),
              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "Amatem Softgel (2.5ml)",
                        style: CustomTextStyles.labelLargeff2b2a29),
                    TextSpan(text: " "),
                    TextSpan(
                        text: "4.5 (23)",
                        style: CustomTextStyles.bodySmallff3772ff)
                  ]),
                  textAlign: TextAlign.left)),
          SizedBox(height: 12.v),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(oldPrice,
                style: theme.textTheme.labelLarge!.copyWith(
                    decoration: TextDecoration.lineThrough,
                    color: theme.colorScheme.primary)),
            Text(price,
                style: theme.textTheme.labelLarge!
                    .copyWith(color: theme.colorScheme.primary))
          ])
        ]);
  }

  /// Common widget
  Widget _buildFrameTwentyTwo(
    BuildContext context, {
    required String emzoronTonicmg,
    required String price,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 8.v),
        decoration: AppDecoration.outlineIndigo
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 1.v),
              CustomImageView(
                  imagePath: ImageConstant.imgRectangle9155x155,
                  height: 110.v,
                  width: 133.h),
              SizedBox(height: 12.v),
              Container(
                  width: 93.h,
                  margin: EdgeInsets.only(right: 39.h),
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "Emzoron Tonic (100mg) ",
                            style: CustomTextStyles.labelLargeff2b2a29),
                        TextSpan(
                            text: "4.5 (23)",
                            style: CustomTextStyles.bodySmallff3772ff)
                      ]),
                      textAlign: TextAlign.left)),
              SizedBox(height: 11.v),
              Text(price,
                  style: theme.textTheme.labelLarge!
                      .copyWith(color: theme.colorScheme.primary))
            ]));
  }

  /// Common widget
  Widget _buildFrameTwentyThree(
    BuildContext context, {
    required String emzoronTonicmg,
    required String price,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 8.v),
        decoration: AppDecoration.outlineIndigo
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 123.v),
              Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                      width: 58.h,
                      margin: EdgeInsets.only(left: 13.h),
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "Emzoron Tonic (100mg) ",
                                style: CustomTextStyles.labelLargeff2b2a29),
                            TextSpan(
                                text: "4.5 (23)",
                                style: CustomTextStyles.bodySmallff3772ff)
                          ]),
                          textAlign: TextAlign.left))),
              SizedBox(height: 11.v),
              Text(price,
                  style: theme.textTheme.labelLarge!
                      .copyWith(color: theme.colorScheme.primary))
            ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:medplusapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:medplusapp/widgets/app_bar/custom_app_bar.dart';
import 'package:medplusapp/widgets/custom_drop_down.dart';
import 'package:medplusapp/widgets/custom_elevated_button.dart';
import 'package:medplusapp/widgets/custom_icon_button.dart';
import 'package:medplusapp/widgets/custom_rating_bar.dart';

// ignore_for_file: must_be_immutable
class ProductPageScreen extends StatelessWidget {
  ProductPageScreen({Key? key}) : super(key: key);

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 12.v),
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle9315x428,
                              height: 315.v,
                              width: 428.h,
                              radius: BorderRadius.circular(5.h)),
                          SizedBox(height: 31.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 19.h),
                                  child: Text("Prostan Eye Drops (2.5ml)",
                                      style: CustomTextStyles
                                          .titleMediumSemiBold_2))),
                          SizedBox(height: 8.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 19.h),
                                  child: Row(children: [
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 2.v),
                                        child: CustomRatingBar(
                                            initialRating: 4,
                                            itemSize: 13,
                                            color: appTheme.amber500)),
                                    Padding(
                                        padding: EdgeInsets.only(left: 10.h),
                                        child: Text("(15 reviews)",
                                            style: CustomTextStyles
                                                .bodySmallBlueA400))
                                  ]))),
                          SizedBox(height: 8.v),
                          _buildFrameTwentyNine(context),
                          SizedBox(height: 34.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 19.h),
                              child: _buildFrame(context,
                                  composition: "Description")),
                          SizedBox(height: 11.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  width: 335.h,
                                  margin:
                                      EdgeInsets.only(left: 19.h, right: 73.h),
                                  child: Text(
                                      "Prostan Ophthalmic Drops is used for Open angle glaucoma, Increased pressure in the eye and other conditions.",
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles.bodyMediumInter
                                          .copyWith(height: 1.57)))),
                          SizedBox(height: 22.v),
                          Divider(
                              color: appTheme.gray30001,
                              indent: 19.h,
                              endIndent: 19.h),
                          SizedBox(height: 23.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 19.h),
                              child: _buildFrame(context,
                                  composition: "Composition")),
                          SizedBox(height: 23.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 19.h),
                              child: CustomDropDown(
                                  hintText: "Reviews",
                                  items: dropdownItemList,
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 1.v),
                                  borderDecoration:
                                      DropDownStyleHelper.underLineGray,
                                  filled: false,
                                  onChanged: (value) {})),
                          SizedBox(height: 29.v),
                          _buildAddToCart(context)
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
            text: "Product Page",
            margin: EdgeInsets.only(left: 35.h, top: 39.v, bottom: 14.v)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildFrameTwentyNine(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 19.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 7.v, bottom: 5.v),
              child: Text("₦ 2,600",
                  style: CustomTextStyles.titleMediumPrimary_1)),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 12.h),
              decoration: AppDecoration.outlineGray300012
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder7),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomIconButton(
                    height: 31.v,
                    width: 24.h,
                    child: CustomImageView(
                        imagePath: ImageConstant.imgAkarIconsPlusGray900)),
                Padding(
                    padding: EdgeInsets.only(left: 9.h, top: 7.v, bottom: 7.v),
                    child:
                        Text("1", style: CustomTextStyles.titleSmallSemiBold)),
                Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: CustomIconButton(
                        height: 32.v,
                        width: 23.h,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgAkarIconsMinus)))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildAddToCart(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 19.h),
        child: IntrinsicWidth(
            child: SizedBox(
                height: 253.v,
                width: 409.h,
                child: Stack(alignment: Alignment.topLeft, children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Row(children: [
                        Text("Related Products",
                            style: theme.textTheme.titleMedium),
                        Padding(
                            padding: EdgeInsets.only(top: 11.v, bottom: 6.v),
                            child: SizedBox(
                                width: 254.h, child: Divider(indent: 10.h)))
                      ])),
                  CustomElevatedButton(
                      height: 52.v,
                      width: 390.h,
                      text: "Add to Cart",
                      onPressed: () {
                        onTapAddToCart(context);
                      },
                      alignment: Alignment.topLeft),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                          height: 208.v,
                          width: 409.h,
                          child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: SizedBox(
                                        height: 207.v,
                                        width: 409.h,
                                        child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Container(
                                                      height: 207.v,
                                                      width: 159.h,
                                                      decoration: BoxDecoration(
                                                          color: theme
                                                              .colorScheme
                                                              .primaryContainer
                                                              .withOpacity(1),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.h),
                                                          border: Border.all(
                                                              color: appTheme
                                                                  .indigo100,
                                                              width: 1.h)))),
                                              Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 13.h,
                                                          top: 10.v,
                                                          bottom: 87.v),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            SizedBox(
                                                                height: 110.v,
                                                                width: 133.h,
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .topLeft,
                                                                    children: [
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgRectangle9,
                                                                          height: 110
                                                                              .v,
                                                                          width: 133
                                                                              .h,
                                                                          alignment:
                                                                              Alignment.center),
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .topLeft,
                                                                          child: Container(
                                                                              width: 27.h,
                                                                              padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 1.v),
                                                                              decoration: AppDecoration.fillBlueA,
                                                                              child: Text("15%", style: theme.textTheme.labelSmall)))
                                                                    ])),
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgRectangle9155x155,
                                                                height: 110.v,
                                                                width: 133.h)
                                                          ]))),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 13.h,
                                                          right: 294.h,
                                                          bottom: 8.v),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                                width: 95.h,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        right: 6
                                                                            .h),
                                                                child: RichText(
                                                                    text: TextSpan(
                                                                        children: [
                                                                          TextSpan(
                                                                              text: "Amatem Softgel (2.5ml)",
                                                                              style: CustomTextStyles.labelLargeff2b2a29),
                                                                          TextSpan(
                                                                              text: " "),
                                                                          TextSpan(
                                                                              text: "4.5 (23)",
                                                                              style: CustomTextStyles.bodySmallff3772ff)
                                                                        ]),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left)),
                                                            SizedBox(
                                                                height: 12.v),
                                                            Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                      "₦ 3,000",
                                                                      style: theme
                                                                          .textTheme
                                                                          .labelLarge!
                                                                          .copyWith(
                                                                              decoration: TextDecoration.lineThrough)),
                                                                  Text(
                                                                      "₦ 2,600",
                                                                      style: theme
                                                                          .textTheme
                                                                          .labelLarge)
                                                                ])
                                                          ])))
                                            ]))),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: SizedBox(
                                        height: 208.v,
                                        width: 242.h,
                                        child: Stack(
                                            alignment: Alignment.topLeft,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Container(
                                                      height: 208.v,
                                                      width: 159.h,
                                                      decoration: BoxDecoration(
                                                          color: theme
                                                              .colorScheme
                                                              .primaryContainer
                                                              .withOpacity(1),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.h),
                                                          border: Border.all(
                                                              color: appTheme
                                                                  .indigo100,
                                                              width: 1.h)))),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgRectangle9155x155,
                                                  height: 110.v,
                                                  width: 133.h,
                                                  alignment: Alignment.topLeft,
                                                  margin: EdgeInsets.only(
                                                      left: 13.h, top: 10.v)),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 13.h,
                                                          bottom: 8.v),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            SizedBox(
                                                                width: 93.h,
                                                                child: RichText(
                                                                    text: TextSpan(
                                                                        children: [
                                                                          TextSpan(
                                                                              text: "Emzoron Tonic (100mg) ",
                                                                              style: CustomTextStyles.labelLargeff2b2a29),
                                                                          TextSpan(
                                                                              text: "4.5 (23)",
                                                                              style: CustomTextStyles.bodySmallff3772ff)
                                                                        ]),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left)),
                                                            SizedBox(
                                                                height: 11.v),
                                                            Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                      "₦ 2,160.00",
                                                                      style: theme
                                                                          .textTheme
                                                                          .labelLarge),
                                                                  Text(
                                                                      "₦ 2,160.00",
                                                                      style: theme
                                                                          .textTheme
                                                                          .labelLarge)
                                                                ])
                                                          ])))
                                            ]))),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                        margin: EdgeInsets.only(left: 338.h),
                                        padding: EdgeInsets.symmetric(
                                            vertical: 35.v),
                                        decoration: AppDecoration.outlineIndigo
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              SizedBox(height: 96.v),
                                              Container(
                                                  width: 58.h,
                                                  margin: EdgeInsets.only(
                                                      left: 13.h),
                                                  child: RichText(
                                                      text: TextSpan(children: [
                                                        TextSpan(
                                                            text:
                                                                "Emzoron Tonic (100mg) ",
                                                            style: CustomTextStyles
                                                                .labelLargeff2b2a29),
                                                        TextSpan(
                                                            text: "4.5 (23)",
                                                            style: CustomTextStyles
                                                                .bodySmallff3772ff)
                                                      ]),
                                                      textAlign:
                                                          TextAlign.left))
                                            ])))
                              ])))
                ]))));
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String composition,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(composition,
          style: CustomTextStyles.titleMediumInter
              .copyWith(color: appTheme.gray900)),
      CustomIconButton(
          height: 20.adaptSize,
          width: 20.adaptSize,
          padding: EdgeInsets.all(5.h),
          decoration: IconButtonStyleHelper.fillPrimaryContainer,
          child: CustomImageView(imagePath: ImageConstant.imgChevron))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the cartScreen when the action is triggered.
  onTapAddToCart(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cartScreen);
  }
}

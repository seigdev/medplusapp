import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:medplusapp/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:medplusapp/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:medplusapp/widgets/app_bar/custom_app_bar.dart';
import 'package:medplusapp/widgets/custom_elevated_button.dart';
import 'package:medplusapp/widgets/custom_icon_button.dart';
import 'package:medplusapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class MessageScreen extends StatelessWidget {
  MessageScreen({Key? key}) : super(key: key);

  TextEditingController messageResponseController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(20.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(right: 61.h),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgEllipse5,
                                        height: 30.adaptSize,
                                        width: 30.adaptSize,
                                        radius: BorderRadius.circular(15.h),
                                        margin: EdgeInsets.only(bottom: 55.v)),
                                    Expanded(
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 10.h),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                      width: 287.h,
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 10.h,
                                                              vertical: 8.v),
                                                      decoration: AppDecoration
                                                          .outlineBlueGray
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .customBorderBL10),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            SizedBox(
                                                                height: 2.v),
                                                            Container(
                                                                width: 258.h,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        right: 8
                                                                            .h),
                                                                child: Text(
                                                                    "Hi Ejiro, how may we be of assistance today?",
                                                                    maxLines: 2,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    style: theme
                                                                        .textTheme
                                                                        .bodyMedium!
                                                                        .copyWith(
                                                                            height:
                                                                                1.43)))
                                                          ])),
                                                  SizedBox(height: 10.v),
                                                  Text("09:27 PM",
                                                      style: CustomTextStyles
                                                          .bodySmallBluegray500)
                                                ])))
                                  ]))),
                      SizedBox(height: 19.v),
                      Container(
                          width: 322.h,
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.h, vertical: 8.v),
                          decoration: AppDecoration.outlineBluegray90014
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL10),
                          child: Text("I am having issues with my order",
                              style: CustomTextStyles
                                  .titleMediumPrimaryContainer_1)),
                      SizedBox(height: 5.v),
                      Container(
                          width: 233.h,
                          margin: EdgeInsets.only(left: 155.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.h, vertical: 8.v),
                          decoration: AppDecoration.outlineBluegray90014
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 2.v),
                                Text("Can you be of help to me?",
                                    style: CustomTextStyles
                                        .titleMediumPrimaryContainer_1)
                              ])),
                      SizedBox(height: 11.v),
                      _buildMessageFrame(context, time: "09:28 PM"),
                      SizedBox(height: 20.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(right: 61.h),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgEllipse5,
                                        height: 30.adaptSize,
                                        width: 30.adaptSize,
                                        radius: BorderRadius.circular(15.h),
                                        margin: EdgeInsets.only(bottom: 10.v)),
                                    Expanded(
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 10.h),
                                            child: CustomTextFormField(
                                                controller:
                                                    messageResponseController,
                                                hintText:
                                                    "Of course, please kindly provide the",
                                                textInputAction:
                                                    TextInputAction.done,
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                        horizontal: 10.h,
                                                        vertical: 11.v),
                                                borderDecoration:
                                                    TextFormFieldStyleHelper
                                                        .outlineBlueGray,
                                                fillColor: appTheme.whiteA700)))
                                  ]))),
                      SizedBox(height: 5.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              margin: EdgeInsets.only(left: 40.h, right: 61.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.h, vertical: 8.v),
                              decoration: AppDecoration.outlineBlueGray
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderBL10),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 2.v),
                                    SizedBox(
                                        width: 264.h,
                                        child: Text(
                                            "Lorem ipsum dolor sit amet salty tea consectetur. Natoque nullam donec id port ridiculus. Amet porttitor tincidunt ut ultricies ante mauris sagittis proin. Nisi in arcu tellus pulvinar ligula. Id ultricies et justo amet. Egestas amet amet augue.",
                                            maxLines: 7,
                                            overflow: TextOverflow.ellipsis,
                                            style: theme.textTheme.bodyMedium!
                                                .copyWith(height: 1.43)))
                                  ]))),
                      SizedBox(height: 10.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 40.h),
                              child: Text("09:27 PM",
                                  style:
                                      CustomTextStyles.bodySmallBluegray500))),
                      SizedBox(height: 19.v),
                      CustomElevatedButton(
                          height: 39.v,
                          width: 233.h,
                          text: "If all goes well, tomorrow.",
                          buttonStyle: CustomButtonStyles.outlineBlueGray,
                          buttonTextStyle:
                              CustomTextStyles.titleMediumPrimaryContainer_1),
                      SizedBox(height: 11.v),
                      _buildMessageFrame(context, time: "09:28 PM"),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildMessageResponseFrame(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 104.v,
        leadingWidth: 44.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 20.h, top: 44.v, bottom: 36.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: Padding(
            padding: EdgeInsets.only(top: 45.v, bottom: 18.v),
            child: Column(children: [
              AppbarSubtitleOne(
                  text: "Send us a Message",
                  margin: EdgeInsets.symmetric(horizontal: 48.h)),
              SizedBox(height: 4.v),
              AppbarSubtitleTwo(text: "We usually reply within a few minutes")
            ])),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildMessageResponseFrame(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 25.v),
        decoration: AppDecoration.outlineBluegray900141,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 6.v),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgGgAttachment,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    margin: EdgeInsets.only(bottom: 1.v)),
                Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text("Type message here...",
                        style: CustomTextStyles.bodyMediumGray600))
              ])),
          CustomIconButton(
              height: 30.adaptSize,
              width: 30.adaptSize,
              padding: EdgeInsets.all(7.h),
              decoration: IconButtonStyleHelper.fillPrimaryTL15,
              child: CustomImageView(
                  imagePath: ImageConstant.imgTeenyiconssendsolid))
        ]));
  }

  /// Common widget
  Widget _buildMessageFrame(
    BuildContext context, {
    required String time,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      Text(time,
          style: CustomTextStyles.bodySmallBluegray500
              .copyWith(color: appTheme.blueGray500)),
      CustomImageView(
          imagePath: ImageConstant.imgCharmTickDouble,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.only(left: 6.h))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

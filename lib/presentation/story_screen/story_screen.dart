import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:medplusapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:medplusapp/widgets/app_bar/custom_app_bar.dart';
import 'package:medplusapp/widgets/custom_elevated_button.dart';
import 'package:medplusapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class StoryScreen extends StatelessWidget {
  StoryScreen({Key? key}) : super(key: key);

  TextEditingController commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 15.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              margin: EdgeInsets.only(bottom: 5.v),
                              padding: EdgeInsets.symmetric(horizontal: 19.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Non eu sit amet euismod",
                                        style: CustomTextStyles
                                            .titleMediumOnPrimaryContainerSemiBold),
                                    SizedBox(height: 16.v),
                                    _buildFrame(context,
                                        bySussexmama: "By Sussexmama",
                                        duration: "28 minutes ago"),
                                    SizedBox(height: 16.v),
                                    SizedBox(
                                        width: 385.h,
                                        child: Text(
                                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. est vitae a dictum Ut  aliqu amet, interdum lectus vitae ut. Lorem ipsum dolor sit amet, consectetur adipiscing elit. \n\nest vitae a dictum Ut  aliqu amet, interdum lectus vitae ut. Lorem ipsum dolor sit amet, consectetur adipiscing elit. est vitae a dictum Ut  aliqu amet, interdum lectus vitae ut.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. est vitae a dictum Ut  aliqu amet, interdum lectus vitae ut.",
                                            maxLines: 13,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .bodyMediumOnPrimaryContainer
                                                .copyWith(height: 1.43))),
                                    SizedBox(height: 13.v),
                                    Row(children: [
                                      SizedBox(
                                          width: 29.h,
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgFaSolidComment,
                                                    height: 16.adaptSize,
                                                    width: 16.adaptSize),
                                                Text("2",
                                                    style: CustomTextStyles
                                                        .bodySmallOnPrimaryContainer)
                                              ])),
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgLoveLikeSvgrepoCom,
                                          height: 16.adaptSize,
                                          width: 16.adaptSize,
                                          margin: EdgeInsets.only(left: 10.h)),
                                      Padding(
                                          padding: EdgeInsets.only(left: 6.h),
                                          child: Text("5",
                                              style: CustomTextStyles
                                                  .bodySmallOnPrimaryContainer))
                                    ]),
                                    SizedBox(height: 15.v),
                                    Divider(color: appTheme.gray300),
                                    SizedBox(height: 16.v),
                                    Text("Comments (2)",
                                        style: CustomTextStyles
                                            .titleMediumOnPrimaryContainer),
                                    SizedBox(height: 15.v),
                                    _buildFrame(context,
                                        bySussexmama: "By Sussexmama",
                                        duration: "28 minutes ago"),
                                    SizedBox(height: 16.v),
                                    SizedBox(
                                        width: 387.h,
                                        child: Text(
                                            "Lorem ipsum dolor sit amet, consectetur adipisc elit. Ut lorem fusce maecenas nulla sit mattis adipiscing netus. Lectus  Hendrerit ut",
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .bodyMediumOnPrimaryContainer
                                                .copyWith(height: 1.43))),
                                    SizedBox(height: 13.v),
                                    Row(children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgEntypoReply,
                                          height: 16.adaptSize,
                                          width: 16.adaptSize,
                                          margin: EdgeInsets.only(top: 1.v)),
                                      Padding(
                                          padding: EdgeInsets.only(left: 6.h),
                                          child: Text("0",
                                              style: CustomTextStyles
                                                  .bodySmallPoppinsOnPrimaryContainer)),
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgLoveLikeSvgrepoComGray300,
                                          height: 16.adaptSize,
                                          width: 16.adaptSize,
                                          margin: EdgeInsets.only(
                                              left: 20.h, top: 1.v)),
                                      Padding(
                                          padding: EdgeInsets.only(left: 6.h),
                                          child: Text("0",
                                              style: CustomTextStyles
                                                  .bodySmallPoppinsOnPrimaryContainer))
                                    ]),
                                    SizedBox(height: 15.v),
                                    Divider(color: appTheme.gray300),
                                    SizedBox(height: 14.v),
                                    _buildFrame(context,
                                        bySussexmama: "By Sussexmama",
                                        duration: "28 minutes ago"),
                                    SizedBox(height: 16.v),
                                    SizedBox(
                                        width: 387.h,
                                        child: Text(
                                            "Lorem ipsum dolor sit amet, consectetur adipisc elit. Ut lorem fusce maecenas nulla sit mattis adipiscing netus. Lectus  Hendrerit ut",
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .bodyMediumOnPrimaryContainer
                                                .copyWith(height: 1.43))),
                                    SizedBox(height: 13.v),
                                    Row(children: [
                                      SizedBox(
                                          width: 30.h,
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgEntypoReply,
                                                    height: 16.adaptSize,
                                                    width: 16.adaptSize,
                                                    margin: EdgeInsets.only(
                                                        top: 1.v)),
                                                Text("0",
                                                    style: CustomTextStyles
                                                        .bodySmallPoppinsOnPrimaryContainer)
                                              ])),
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgLoveLikeSvgrepoComGray300,
                                          height: 16.adaptSize,
                                          width: 16.adaptSize,
                                          margin: EdgeInsets.only(left: 20.h)),
                                      Padding(
                                          padding: EdgeInsets.only(left: 6.h),
                                          child: Text("0",
                                              style: CustomTextStyles
                                                  .bodySmallPoppinsOnPrimaryContainer))
                                    ]),
                                    SizedBox(height: 15.v),
                                    Divider(color: appTheme.gray300),
                                    SizedBox(height: 44.v),
                                    _buildLabelIcon(context),
                                    SizedBox(height: 15.v),
                                    CustomTextFormField(
                                        controller: commentController,
                                        hintText: "Enter text",
                                        textInputAction: TextInputAction.done,
                                        suffix: Container(
                                            margin: EdgeInsets.fromLTRB(
                                                30.h, 8.v, 8.h, 8.v),
                                            child: CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgSettings,
                                                height: 11.adaptSize,
                                                width: 11.adaptSize)),
                                        suffixConstraints:
                                            BoxConstraints(maxHeight: 128.v),
                                        maxLines: 7,
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 8.h, vertical: 9.v)),
                                    SizedBox(height: 6.v),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Text("0/500",
                                            style: CustomTextStyles
                                                .labelLargeIndigo100))
                                  ]))))
                ])),
            bottomNavigationBar: _buildComment(context)));
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
            text: "Sussexmama Story",
            margin: EdgeInsets.only(left: 35.h, top: 40.v, bottom: 13.v)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildLabelIcon(BuildContext context) {
    return Container(
        width: 390.h,
        decoration: AppDecoration.white
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder7),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 1.v),
              Text("Add a comment", style: theme.textTheme.titleMedium)
            ]));
  }

  /// Section Widget
  Widget _buildComment(BuildContext context) {
    return CustomElevatedButton(
        height: 52.v,
        text: "Comment",
        margin: EdgeInsets.only(left: 19.h, right: 19.h, bottom: 21.v));
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String bySussexmama,
    required String duration,
  }) {
    return Row(children: [
      CustomImageView(
          imagePath: ImageConstant.imgEllipse1340x40,
          height: 40.adaptSize,
          width: 40.adaptSize,
          radius: BorderRadius.circular(20.h)),
      Padding(
          padding: EdgeInsets.only(left: 15.h, top: 3.v),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(bySussexmama,
                style: CustomTextStyles.titleSmallOnPrimaryContainer_1
                    .copyWith(color: theme.colorScheme.onPrimaryContainer)),
            SizedBox(height: 3.v),
            Text(duration,
                style: CustomTextStyles.bodySmallGray600Light
                    .copyWith(color: appTheme.gray600))
          ]))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:medplusapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:medplusapp/widgets/app_bar/custom_app_bar.dart';

class ViewConsultationScreen extends StatelessWidget {
  const ViewConsultationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 15.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildFrame(context),
                      SizedBox(height: 31.v),
                      Text("Complaint ",
                          style: CustomTextStyles.titleMediumSemiBold_2),
                      SizedBox(height: 9.v),
                      Container(
                          width: 376.h,
                          margin: EdgeInsets.only(right: 13.h),
                          child: Text(
                              "Patient complained of persistent fatigue, frequent infections, weightloss, recurrent nosebleeds, excessive sweating, and bone pain.",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyMedium!
                                  .copyWith(height: 1.50))),
                      SizedBox(height: 18.v),
                      Text("Doctor’s Assessment",
                          style: CustomTextStyles.titleMediumSemiBold_2),
                      SizedBox(height: 11.v),
                      Container(
                          width: 369.h,
                          margin: EdgeInsets.only(right: 20.h),
                          child: Text(
                              "Patient has abnormal levels of white blood cells that suggests leukemia. I recommend patient runs a blood test and extracts a sample of bone marrow from the hipbone to determine treatment options.",
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyMedium!
                                  .copyWith(height: 1.50))),
                      SizedBox(height: 20.v),
                      Text("Diagnosis",
                          style: CustomTextStyles.titleMediumSemiBold_2),
                      SizedBox(height: 9.v),
                      Text("Lymphocytic leukemia",
                          style: theme.textTheme.bodyMedium),
                      SizedBox(height: 18.v),
                      Text("Treatment",
                          style: CustomTextStyles.titleMediumSemiBold_2),
                      SizedBox(height: 11.v),
                      SizedBox(
                          width: 167.h,
                          child: Text("Immunotheraphy\nBone marrow transplant",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyMedium!
                                  .copyWith(height: 1.50))),
                      SizedBox(height: 20.v),
                      Text("Prescription",
                          style: CustomTextStyles.titleMediumSemiBold_2),
                      SizedBox(height: 9.v),
                      SizedBox(
                          width: 99.h,
                          child: Text("Blinatumomab\nClofarabine",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyMedium!
                                  .copyWith(height: 1.50))),
                      SizedBox(height: 20.v),
                      Text("Follow-Up",
                          style: CustomTextStyles.titleMediumSemiBold_2),
                      SizedBox(height: 10.v),
                      Text("3 months", style: theme.textTheme.bodyMedium),
                      SizedBox(height: 22.v),
                      Text("Linked Documents",
                          style: CustomTextStyles.titleMediumSemiBold_2),
                      SizedBox(height: 6.v)
                    ])),
            bottomNavigationBar: _buildAttachment(context)));
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
            text: "View Consultation", margin: EdgeInsets.only(left: 35.h)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 17.v),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle133,
              height: 60.adaptSize,
              width: 60.adaptSize,
              radius: BorderRadius.circular(10.h)),
          Padding(
              padding: EdgeInsets.only(left: 20.h, top: 11.v, bottom: 8.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Dr. Rashida Mohammed (F)",
                        style: CustomTextStyles.titleMediumSemiBold_2),
                    SizedBox(height: 4.v),
                    Text("Haematologist",
                        style: CustomTextStyles.bodyMediumGray600)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildAttachment(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 29.h, right: 29.h, bottom: 34.v),
        decoration: AppDecoration.outlineIndigo1001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder7),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                  width: 141.h,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgFiletype,
                            height: 30.adaptSize,
                            width: 30.adaptSize,
                            margin: EdgeInsets.only(bottom: 1.v)),
                        Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Blood Test.pdf",
                                      style: CustomTextStyles
                                          .titleSmallOnPrimaryContainer),
                                  Text("100KB",
                                      style:
                                          CustomTextStyles.bodySmallBluegray400)
                                ]))
                      ])),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgFluentShare48Regular,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(top: 3.v, bottom: 4.v)),
              CustomImageView(
                  imagePath: ImageConstant.imgAntDesignDownloadOutlined,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(left: 16.h, top: 3.v, bottom: 4.v))
            ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

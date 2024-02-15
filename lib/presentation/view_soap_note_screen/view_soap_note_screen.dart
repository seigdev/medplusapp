import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:medplusapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:medplusapp/widgets/app_bar/custom_app_bar.dart';

class ViewSoapNoteScreen extends StatelessWidget {
  const ViewSoapNoteScreen({Key? key}) : super(key: key);

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
                      _buildPatientDetails(context),
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
                      Text("Assessment",
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
            text: "View SOAP Note",
            margin: EdgeInsets.only(left: 35.h, top: 37.v, bottom: 16.v)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildPatientDetails(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(14.h),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgEllipse565x65,
              height: 65.adaptSize,
              width: 65.adaptSize,
              radius: BorderRadius.circular(32.h),
              margin: EdgeInsets.only(bottom: 1.v)),
          Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Ejiro Osarobo", style: theme.textTheme.titleMedium),
                    SizedBox(height: 5.v),
                    Text("Female",
                        style: CustomTextStyles.bodyMediumBluegray500),
                    SizedBox(height: 6.v),
                    Text("28 Years Old",
                        style: CustomTextStyles.bodyMediumBluegray500)
                  ])),
          Spacer(),
          Container(
              width: 111.h,
              margin: EdgeInsets.only(bottom: 24.v),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgIcRoundDateRangeBlueGray500,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(bottom: 21.v)),
                Container(
                    width: 81.h,
                    margin: EdgeInsets.only(left: 9.h),
                    child: Text("12/02/2022 \n09:00AM",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.right,
                        style: CustomTextStyles.bodyMediumBluegray500
                            .copyWith(height: 1.43)))
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

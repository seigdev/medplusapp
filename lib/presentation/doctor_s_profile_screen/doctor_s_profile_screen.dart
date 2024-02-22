import '../doctor_s_profile_screen/widgets/userprofile2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:medplusapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:medplusapp/widgets/app_bar/custom_app_bar.dart';
import 'package:medplusapp/widgets/custom_rating_bar.dart';
import 'package:medplusapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class DoctorSProfileScreen extends StatelessWidget {
  DoctorSProfileScreen({Key? key}) : super(key: key);

  TextEditingController horizontalTabsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 15.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildUserProfile(context),
                      SizedBox(height: 30.v),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomTextFormField(
                                width: 42.h,
                                controller: horizontalTabsController,
                                hintText: "Basic",
                                hintStyle: theme.textTheme.titleMedium!,
                                textInputAction: TextInputAction.done,
                                borderDecoration:
                                    TextFormFieldStyleHelper.underLinePrimary,
                                filled: false),
                            Padding(
                                padding:
                                    EdgeInsets.only(left: 32.h, bottom: 8.v),
                                child: Text("Reviews",
                                    style: CustomTextStyles
                                        .bodyLargeInterBluegray500))
                          ]),
                      SizedBox(height: 27.v),
                      Text("Biography",
                          style: CustomTextStyles.titleMediumInter),
                      SizedBox(height: 17.v),
                      SizedBox(
                          width: 386.h,
                          child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vel, sagittis sed eget id aenean auctor mauris tempus. Ula egestas vitae volutpat est ut diam ultrices risus. Tellus urn, vitae diam quam et nulla.  ",
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodyMediumInter
                                  .copyWith(height: 1.57))),
                      SizedBox(height: 28.v),
                      SizedBox(
                          height: 151.v,
                          width: 295.h,
                          child:
                              Stack(alignment: Alignment.centerLeft, children: [
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                    "Treatment of common chronic conditions",
                                    style: CustomTextStyles.bodyMediumInter)),
                            _buildServices(context)
                          ])),
                      SizedBox(height: 33.v),
                      Text("Qualifications",
                          style: CustomTextStyles.titleMediumInter),
                      SizedBox(height: 16.v),
                      _buildResidencyUniversity(context),
                      SizedBox(height: 9.v),
                      _buildMbbsUniversity(context),
                      SizedBox(height: 5.v)
                    ]))));
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
            text: "Meet Your Doctor",
            margin: EdgeInsets.only(left: 35.h, top: 37.v, bottom: 16.v)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 15.v),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 4.v),
              Padding(
                  padding: EdgeInsets.only(right: 47.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgRectangle133,
                        height: 80.adaptSize,
                        width: 80.adaptSize,
                        radius: BorderRadius.circular(10.h)),
                    Padding(
                        padding: EdgeInsets.only(
                            left: 20.h, top: 10.v, bottom: 10.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Dr. Rashida Mohammed (F)",
                                  style:
                                      CustomTextStyles.titleMediumSemiBold_2),
                              SizedBox(height: 4.v),
                              Text("Haematologist",
                                  style: CustomTextStyles.bodyMediumGray600),
                              SizedBox(height: 3.v),
                              Row(children: [
                                Padding(
                                    padding: EdgeInsets.only(bottom: 1.v),
                                    child: CustomRatingBar(
                                        initialRating: 4, itemSize: 13)),
                                Padding(
                                    padding: EdgeInsets.only(left: 4.h),
                                    child: Text("(45)",
                                        style: CustomTextStyles
                                            .bodySmallBluegray500))
                              ])
                            ]))
                  ])),
              SizedBox(height: 15.v),
              SizedBox(
                  height: 71.v,
                  child: ListView.separated(
                      padding: EdgeInsets.only(right: 1.h),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 10.h);
                      },
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Userprofile2ItemWidget();
                      }))
            ]));
  }

  /// Section Widget
  Widget _buildServices(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(right: 110.h),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Services", style: CustomTextStyles.titleMediumInter),
                  SizedBox(height: 17.v),
                  Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgArrowUp,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(bottom: 3.v)),
                    Padding(
                        padding: EdgeInsets.only(left: 8.h, top: 2.v),
                        child: Text("Routine checkups",
                            style: CustomTextStyles.bodyMediumInter))
                  ]),
                  SizedBox(height: 12.v),
                  Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgArrowUp,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(bottom: 3.v)),
                    Padding(
                        padding: EdgeInsets.only(left: 8.h, top: 2.v),
                        child: Text("Health risk management",
                            style: CustomTextStyles.bodyMediumInter))
                  ]),
                  SizedBox(height: 12.v),
                  Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgArrowUp,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(bottom: 3.v)),
                    Padding(
                        padding: EdgeInsets.only(left: 8.h, top: 2.v),
                        child: Text("Screening tests",
                            style: CustomTextStyles.bodyMediumInter))
                  ]),
                  SizedBox(height: 12.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgArrowUp,
                      height: 16.adaptSize,
                      width: 16.adaptSize)
                ])));
  }

  /// Section Widget
  Widget _buildResidencyUniversity(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      CustomImageView(
          imagePath: ImageConstant.imgArrowUp,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.only(bottom: 26.v)),
      Expanded(
          child: Container(
              width: 362.h,
              margin: EdgeInsets.only(left: 8.h),
              child: Text(
                  "Residency - University of Benin Teaching Hospital, Edo State (2009)",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style:
                      CustomTextStyles.bodyMediumInter.copyWith(height: 1.40))))
    ]);
  }

  /// Section Widget
  Widget _buildMbbsUniversity(BuildContext context) {
    return Row(children: [
      CustomImageView(
          imagePath: ImageConstant.imgArrowUp,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.only(bottom: 3.v)),
      Padding(
          padding: EdgeInsets.only(left: 8.h, top: 2.v),
          child: Text("MBBS, University of Port-Harcourt, Rivers State (2007)",
              style: CustomTextStyles.bodyMediumInter))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

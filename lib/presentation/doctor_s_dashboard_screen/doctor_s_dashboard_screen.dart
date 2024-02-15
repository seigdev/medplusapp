import '../doctor_s_dashboard_screen/widgets/seventysix_item_widget.dart';
import '../doctor_s_dashboard_screen/widgets/userprofile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:medplusapp/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:medplusapp/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:medplusapp/widgets/app_bar/custom_app_bar.dart';

class DoctorSDashboardScreen extends StatelessWidget {
  const DoctorSDashboardScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 18.v),
          child: Column(
            children: [
              _buildWidget(context),
              SizedBox(height: 30.v),
              _buildFrame(context),
              SizedBox(height: 30.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 19.h),
                child: _buildUpcomingAppointments(
                  context,
                  upcomingAppointments: "Appointment Requests",
                ),
              ),
              SizedBox(height: 23.v),
              _buildUserProfile(context),
              SizedBox(height: 30.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 19.h),
                child: _buildUpcomingAppointments(
                  context,
                  upcomingAppointments: "Upcoming Appointments",
                ),
              ),
              SizedBox(height: 27.v),
              _buildSeventySix(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 80.v,
      leadingWidth: 43.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgGgMenuLeft,
        margin: EdgeInsets.only(
          left: 19.h,
          top: 15.v,
          bottom: 15.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleThree(
        text: "Tuesday, 5 December",
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgIcBaselineNot,
          margin: EdgeInsets.fromLTRB(19.h, 16.v, 19.h, 15.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 19.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomImageView(
              imagePath: ImageConstant.imgFrame12562BlueA400,
              height: 70.v,
              width: 75.h,
              radius: BorderRadius.circular(
                15.h,
              ),
              margin: EdgeInsets.only(right: 15.h),
            ),
          ),
          Expanded(
            child: CustomImageView(
              imagePath: ImageConstant.imgFrame12567,
              height: 70.v,
              width: 75.h,
              radius: BorderRadius.circular(
                15.h,
              ),
              margin: EdgeInsets.symmetric(horizontal: 15.h),
            ),
          ),
          Expanded(
            child: CustomImageView(
              imagePath: ImageConstant.imgFrame12567AmberA400,
              height: 70.v,
              width: 75.h,
              radius: BorderRadius.circular(
                15.h,
              ),
              margin: EdgeInsets.symmetric(horizontal: 15.h),
            ),
          ),
          Expanded(
            child: CustomImageView(
              imagePath: ImageConstant.imgFrame12565Green500,
              height: 70.v,
              width: 75.h,
              radius: BorderRadius.circular(
                15.h,
              ),
              margin: EdgeInsets.only(left: 15.h),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      color: appTheme.gray5003,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Container(
        height: 170.v,
        width: 390.h,
        decoration: AppDecoration.outlineBluegray900142.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage8,
              height: 170.v,
              width: 223.h,
              alignment: Alignment.centerRight,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 35.v,
                ),
                decoration: AppDecoration.gradientBlueAToBlueA.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder20,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello Dr. Rashida",
                      style: CustomTextStyles.headlineSmallPrimaryContainer,
                    ),
                    SizedBox(height: 9.v),
                    SizedBox(
                      width: 195.h,
                      child: Text(
                        "Here are your important tasks and reports, please check the next appointment",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.titleSmallPrimaryContainer
                            .copyWith(
                          height: 1.43,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return SizedBox(
      height: 75.v,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 19.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 10.h,
          );
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return UserprofileItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventySix(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 19.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 0.5.v),
            child: SizedBox(
              width: 266.h,
              child: Divider(
                height: 1.v,
                thickness: 1.v,
                color: appTheme.gray300,
              ),
            ),
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return SeventysixItemWidget();
        },
      ),
    );
  }

  /// Common widget
  Widget _buildUpcomingAppointments(
    BuildContext context, {
    required String upcomingAppointments,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 6.v),
          child: Text(
            upcomingAppointments,
            style: theme.textTheme.titleMedium!.copyWith(
              color: appTheme.gray900,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgMaterialSymbol,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ],
    );
  }
}

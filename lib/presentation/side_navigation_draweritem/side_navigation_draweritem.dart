import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/presentation/account_settings_screen/account_settings_screen.dart';
import 'package:medplusapp/presentation/book_appointment_now_screen/book_appointment_now_screen.dart';
import 'package:medplusapp/presentation/book_lab_test_screen/book_lab_test_screen.dart';
import 'package:medplusapp/presentation/dashboard_screen/dashboard_screen.dart';
import 'package:medplusapp/presentation/help_center_screen/help_center_screen.dart';
import 'package:medplusapp/presentation/scw_community_screen/scw_community_screen.dart';

import '../consultations_one_screen/consultations_one_screen.dart';

class SideNavigationDraweritem extends StatelessWidget {
  const SideNavigationDraweritem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        width: 325.h,
        padding: EdgeInsets.symmetric(
          horizontal: 25.h,
          vertical: 41.v,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle117,
              height: 70.adaptSize,
              width: 70.adaptSize,
              radius: BorderRadius.circular(
                10.h,
              ),
            ),
            SizedBox(height: 19.v),
            Text(
              "Stella Adebayo",
              style: CustomTextStyles.titleMediumOnPrimaryContainer,
            ),
            SizedBox(height: 7.v),
            Text(
              "Stella.adebayo@gmail.com",
              style: theme.textTheme.bodyMedium,
            ),
            SizedBox(height: 28.v),
            Divider(),
            SizedBox(height: 44.v),
            Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: Row(
                children: [
                  CustomImageView(
                    // imagePath: ImageConstant.imgHomeSvgrepoCom,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 13.h,
                      top: 3.v,
                      bottom: 3.v,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DashboardScreen()));
                      },
                      child: Text(
                        "Home",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.v),
            Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: Row(
                children: [
                  CustomImageView(
                    // imagePath: ImageConstant.imgCalendarSvgrepoCom,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 13.h,
                      top: 4.v,
                      bottom: 2.v,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    BookAppointmentNowScreen()));
                      },
                      child: Text(
                        "Appointments",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                    // child: Text(
                    //   "Appointments",
                    //   style: theme.textTheme.bodyMedium,
                    // ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.v),
            Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: Row(
                children: [
                  CustomImageView(
                    // imagePath: ImageConstant.imgMedicalHistory,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 13.h,
                      top: 3.v,
                      bottom: 3.v,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ConsultationsOneScreen()));
                      },
                      child: Text(
                        "Consultations",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.v),
            Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: Row(
                children: [
                  CustomImageView(
                    // imagePath: ImageConstant.imgPillsSvgrepoCom,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 13.h,
                      top: 3.v,
                      bottom: 3.v,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ConsultationsOneScreen()));
                      },
                      child: Text(
                        "Medications",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 30.v),
            Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: Row(
                children: [
                  CustomImageView(
                    // imagePath: ImageConstant.imgLabSvgrepoCom,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 13.h,
                      top: 3.v,
                      bottom: 3.v,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BookLabTestScreen()));
                      },
                      child: Text(
                        "Lab Tests",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 45.v),
            Divider(),
            SizedBox(height: 44.v),
            Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: Row(
                children: [
                  CustomImageView(
                    // imagePath: ImageConstant.imgPharmacySvgrepoCom,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 13.h,
                      top: 4.v,
                      bottom: 2.v,
                    ),
                    child: Text(
                      "Pharmacy",
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.v),
            Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: Row(
                children: [
                  CustomImageView(
                    // imagePath: ImageConstant.imgGroupPeopleSvgrepoCom,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 13.h,
                      top: 5.v,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ScwCommunityScreen()));
                      },
                      child: Text(
                        "SCW Community",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.v),

            Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: Row(
                children: [
                  CustomImageView(
                    // imagePath: ImageConstant.imgCarbonsettings,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 13.h,
                      top: 5.v,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AccountSettingsScreen()));
                      },
                      child: Text(
                        "Account Settings",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // CustomElevatedButton(
            //   text: "Account Settings",
            //   margin: EdgeInsets.only(right: 7.h),
            //   leftIcon: Container(
            //     margin: EdgeInsets.only(right: 13.h),
            //     child: CustomImageView(
            //       imagePath: ImageConstant.imgCarbonsettings,
            //       height: 24.adaptSize,
            //       width: 24.adaptSize,
            //     ),
            //   ),
            // ),
            SizedBox(height: 15.v),

            Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: Row(
                children: [
                  CustomImageView(
                    // imagePath: ImageConstant.imgFluentChatHelp20Regular,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 13.h,
                      top: 5.v,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HelpCenterScreen()));
                      },
                      child: Text(
                        "Help Center",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.only(left: 10.h),
            //   child: _buildHelpCenter(
            //     context,
            //     image: ImageConstant.imgFluentChatHelp20Regular,
            //     text: "Help Center",
            //   ),
            // ),
            SizedBox(height: 15.v),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildHelpCenter(
    BuildContext context, {
    required String image,
    required String text,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: image,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 13.h,
            top: 4.v,
            bottom: 2.v,
          ),
          child: Text(
            text,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: theme.colorScheme.onPrimaryContainer,
            ),
          ),
        ),
      ],
    );
  }
}

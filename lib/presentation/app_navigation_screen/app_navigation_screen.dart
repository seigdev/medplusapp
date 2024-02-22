import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash Screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Dashboard",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.dashboardScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Account Settings",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.accountSettingsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Personal Profile One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.personalProfileOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Health Profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.healthProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Create Wallet",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.createWalletScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Wallet",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.walletScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Fund Wallet",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.fundWalletScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add Card",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.addCardScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Security",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.securityScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Security One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.securityOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notifications One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.notificationsOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Help Center",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.helpCenterScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Message",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.messageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Doctor\\'s Dashboard",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.doctorSDashboardScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Personal Profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.personalProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Bio",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.bioScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Availability",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.availabilityScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notifications",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.notificationsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Create Account_Patient - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.createAccountPatientTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "OTP Authentication",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.otpAuthenticationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign In",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Forgot Password",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.forgotPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Enter OTP",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.enterOtpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Reset Password",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.resetPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Successful",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.successfulScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Appointments",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.appointmentsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Doctor\\'s Profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.doctorSProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add SOAP Note",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.addSoapNoteScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Book Appointment_Now",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bookAppointmentNowScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Consultations",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.consultationsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "View Consultation",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.viewConsultationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Patients",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.patientsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Medications",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.medicationsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "View Rx",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.viewRxScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Consultations One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.consultationsOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "View Soap Note",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.viewSoapNoteScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Edit SOAP Note",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.editSoapNoteScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Medications_Orders",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.medicationsOrdersScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Order Details",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.orderDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Pharmacy",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.pharmacyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Product Page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.productPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Cart",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.cartScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Checkout",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.checkoutScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Payment",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.paymentScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Review",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.reviewScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Success",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.successScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Billings",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.billingsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Lab Tests",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.labTestsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Book Lab Test",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bookLabTestScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Ratings",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.ratingsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "SCW Community",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.scwCommunityScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Story",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.storyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Create Story",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.createStoryScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}

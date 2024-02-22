import 'package:flutter/material.dart';
import 'package:medplusapp/presentation/splash_screen/splash_screen.dart';
import 'package:medplusapp/presentation/account_settings_screen/account_settings_screen.dart';
import 'package:medplusapp/presentation/personal_profile_one_screen/personal_profile_one_screen.dart';
import 'package:medplusapp/presentation/health_profile_screen/health_profile_screen.dart';
import 'package:medplusapp/presentation/create_wallet_screen/create_wallet_screen.dart';
import 'package:medplusapp/presentation/wallet_screen/wallet_screen.dart';
import 'package:medplusapp/presentation/fund_wallet_screen/fund_wallet_screen.dart';
import 'package:medplusapp/presentation/add_card_screen/add_card_screen.dart';
import 'package:medplusapp/presentation/security_screen/security_screen.dart';
import 'package:medplusapp/presentation/security_one_screen/security_one_screen.dart';
import 'package:medplusapp/presentation/notifications_one_screen/notifications_one_screen.dart';
import 'package:medplusapp/presentation/help_center_screen/help_center_screen.dart';
import 'package:medplusapp/presentation/message_screen/message_screen.dart';
import 'package:medplusapp/presentation/doctor_s_dashboard_screen/doctor_s_dashboard_screen.dart';
import 'package:medplusapp/presentation/personal_profile_screen/personal_profile_screen.dart';
import 'package:medplusapp/presentation/bio_screen/bio_screen.dart';
import 'package:medplusapp/presentation/availability_screen/availability_screen.dart';
import 'package:medplusapp/presentation/notifications_screen/notifications_screen.dart';
import 'package:medplusapp/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:medplusapp/presentation/create_account_patient_tab_container_screen/create_account_patient_tab_container_screen.dart';
import 'package:medplusapp/presentation/otp_authentication_screen/otp_authentication_screen.dart';
import 'package:medplusapp/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:medplusapp/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:medplusapp/presentation/enter_otp_screen/enter_otp_screen.dart';
import 'package:medplusapp/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:medplusapp/presentation/successful_screen/successful_screen.dart';
import 'package:medplusapp/presentation/appointments_screen/appointments_screen.dart';
import 'package:medplusapp/presentation/doctor_s_profile_screen/doctor_s_profile_screen.dart';
import 'package:medplusapp/presentation/add_soap_note_screen/add_soap_note_screen.dart';
import 'package:medplusapp/presentation/book_appointment_now_screen/book_appointment_now_screen.dart';
import 'package:medplusapp/presentation/consultations_screen/consultations_screen.dart';
import 'package:medplusapp/presentation/view_consultation_screen/view_consultation_screen.dart';
import 'package:medplusapp/presentation/patients_screen/patients_screen.dart';
import 'package:medplusapp/presentation/medications_screen/medications_screen.dart';
import 'package:medplusapp/presentation/view_rx_screen/view_rx_screen.dart';
import 'package:medplusapp/presentation/consultations_one_screen/consultations_one_screen.dart';
import 'package:medplusapp/presentation/view_soap_note_screen/view_soap_note_screen.dart';
import 'package:medplusapp/presentation/edit_soap_note_screen/edit_soap_note_screen.dart';
import 'package:medplusapp/presentation/medications_orders_screen/medications_orders_screen.dart';
import 'package:medplusapp/presentation/order_details_screen/order_details_screen.dart';
import 'package:medplusapp/presentation/pharmacy_screen/pharmacy_screen.dart';
import 'package:medplusapp/presentation/product_page_screen/product_page_screen.dart';
import 'package:medplusapp/presentation/cart_screen/cart_screen.dart';
import 'package:medplusapp/presentation/checkout_screen/checkout_screen.dart';
import 'package:medplusapp/presentation/payment_screen/payment_screen.dart';
import 'package:medplusapp/presentation/review_screen/review_screen.dart';
import 'package:medplusapp/presentation/success_screen/success_screen.dart';
import 'package:medplusapp/presentation/billings_screen/billings_screen.dart';
import 'package:medplusapp/presentation/lab_tests_screen/lab_tests_screen.dart';
import 'package:medplusapp/presentation/book_lab_test_screen/book_lab_test_screen.dart';
import 'package:medplusapp/presentation/ratings_screen/ratings_screen.dart';
import 'package:medplusapp/presentation/scw_community_screen/scw_community_screen.dart';
import 'package:medplusapp/presentation/story_screen/story_screen.dart';
import 'package:medplusapp/presentation/create_story_screen/create_story_screen.dart';
import 'package:medplusapp/presentation/app_navigation_screen/app_navigation_screen.dart';

import '../presentation/dashboard_screen/dashboard_screen.dart';
import '../presentation/review_booking_screen/review_booking_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String dashboardScreen = '/dashboard_screen';

  static const String accountSettingsScreen = '/account_settings_screen';

  static const String personalProfileOneScreen = '/personal_profile_one_screen';

  static const String healthProfileScreen = '/health_profile_screen';

  static const String createWalletScreen = '/create_wallet_screen';

  static const String walletScreen = '/wallet_screen';

  static const String fundWalletScreen = '/fund_wallet_screen';

  static const String addCardScreen = '/add_card_screen';

  static const String securityScreen = '/security_screen';

  static const String securityOneScreen = '/security_one_screen';

  static const String notificationsOneScreen = '/notifications_one_screen';

  static const String helpCenterScreen = '/help_center_screen';

  static const String messageScreen = '/message_screen';

  static const String doctorSDashboardScreen = '/doctor_s_dashboard_screen';

  static const String personalProfileScreen = '/personal_profile_screen';

  static const String bioScreen = '/bio_screen';

  static const String availabilityScreen = '/availability_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String onboardingScreen = '/onboarding_screen';

  static const String createAccountPatientPage = '/create_account_patient_page';

  static const String createAccountPatientTabContainerScreen =
      '/create_account_patient_tab_container_screen';

  static const String otpAuthenticationScreen = '/otp_authentication_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String enterOtpScreen = '/enter_otp_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String successfulScreen = '/successful_screen';

  static const String appointmentsScreen = '/appointments_screen';

  static const String doctorSProfileScreen = '/doctor_s_profile_screen';

  static const String addSoapNoteScreen = '/add_soap_note_screen';

  static const String bookAppointmentNowScreen = '/book_appointment_now_screen';

  static const String consultationsScreen = '/consultations_screen';

  static const String viewConsultationScreen = '/view_consultation_screen';

  static const String patientsScreen = '/patients_screen';

  static const String medicationsScreen = '/medications_screen';

  static const String viewRxScreen = '/view_rx_screen';

  static const String consultationsOneScreen = '/consultations_one_screen';

  static const String viewSoapNoteScreen = '/view_soap_note_screen';

  static const String editSoapNoteScreen = '/edit_soap_note_screen';

  static const String medicationsOrdersScreen = '/medications_orders_screen';

  static const String orderDetailsScreen = '/order_details_screen';

  static const String pharmacyScreen = '/pharmacy_screen';

  static const String productPageScreen = '/product_page_screen';

  static const String cartScreen = '/cart_screen';

  static const String checkoutScreen = '/checkout_screen';

  static const String paymentScreen = '/payment_screen';

  static const String reviewScreen = '/review_screen';

  static const String successScreen = '/success_screen';

  static const String billingsScreen = '/billings_screen';

  static const String labTestsScreen = '/lab_tests_screen';

  static const String bookLabTestScreen = '/book_lab_test_screen';

  static const String ratingsScreen = '/ratings_screen';

  static const String scwCommunityScreen = '/scw_community_screen';

  static const String storyScreen = '/story_screen';

  static const String createStoryScreen = '/create_story_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String reviewBookingScreen = '/review_booking_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    dashboardScreen: (context) => DashboardScreen(),
    accountSettingsScreen: (context) => AccountSettingsScreen(),
    personalProfileOneScreen: (context) => PersonalProfileOneScreen(),
    healthProfileScreen: (context) => HealthProfileScreen(),
    createWalletScreen: (context) => CreateWalletScreen(),
    walletScreen: (context) => WalletScreen(),
    fundWalletScreen: (context) => FundWalletScreen(),
    addCardScreen: (context) => AddCardScreen(),
    securityScreen: (context) => SecurityScreen(),
    securityOneScreen: (context) => SecurityOneScreen(),
    notificationsOneScreen: (context) => NotificationsOneScreen(),
    helpCenterScreen: (context) => HelpCenterScreen(),
    messageScreen: (context) => MessageScreen(),
    doctorSDashboardScreen: (context) => DoctorSDashboardScreen(),
    personalProfileScreen: (context) => PersonalProfileScreen(),
    bioScreen: (context) => BioScreen(),
    availabilityScreen: (context) => AvailabilityScreen(),
    notificationsScreen: (context) => NotificationsScreen(),
    onboardingScreen: (context) => OnboardingScreen(),
    createAccountPatientTabContainerScreen: (context) =>
        CreateAccountPatientTabContainerScreen(),
    otpAuthenticationScreen: (context) => OtpAuthenticationScreen(),
    signInScreen: (context) => SignInScreen(),
    forgotPasswordScreen: (context) => ForgotPasswordScreen(),
    enterOtpScreen: (context) => EnterOtpScreen(),
    resetPasswordScreen: (context) => ResetPasswordScreen(),
    successfulScreen: (context) => SuccessfulScreen(),
    appointmentsScreen: (context) => AppointmentsScreen(),
    doctorSProfileScreen: (context) => DoctorSProfileScreen(),
    addSoapNoteScreen: (context) => AddSoapNoteScreen(),
    bookAppointmentNowScreen: (context) => BookAppointmentNowScreen(),
    consultationsScreen: (context) => ConsultationsScreen(),
    viewConsultationScreen: (context) => ViewConsultationScreen(),
    patientsScreen: (context) => PatientsScreen(),
    medicationsScreen: (context) => MedicationsScreen(),
    viewRxScreen: (context) => ViewRxScreen(),
    consultationsOneScreen: (context) => ConsultationsOneScreen(),
    viewSoapNoteScreen: (context) => ViewSoapNoteScreen(),
    editSoapNoteScreen: (context) => EditSoapNoteScreen(),
    medicationsOrdersScreen: (context) => MedicationsOrdersScreen(),
    orderDetailsScreen: (context) => OrderDetailsScreen(),
    pharmacyScreen: (context) => PharmacyScreen(),
    productPageScreen: (context) => ProductPageScreen(),
    cartScreen: (context) => CartScreen(),
    checkoutScreen: (context) => CheckoutScreen(),
    paymentScreen: (context) => PaymentScreen(),
    reviewScreen: (context) => ReviewScreen(),
    successScreen: (context) => SuccessScreen(),
    billingsScreen: (context) => BillingsScreen(),
    labTestsScreen: (context) => LabTestsScreen(),
    bookLabTestScreen: (context) => BookLabTestScreen(),
    ratingsScreen: (context) => RatingsScreen(),
    scwCommunityScreen: (context) => ScwCommunityScreen(),
    storyScreen: (context) => StoryScreen(),
    createStoryScreen: (context) => CreateStoryScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    reviewBookingScreen: (context) => ReviewBookingScreen(),
  };
}

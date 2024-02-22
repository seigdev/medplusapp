import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:medplusapp/widgets/custom_elevated_button.dart';
import 'package:medplusapp/widgets/custom_phone_number.dart';
import 'package:medplusapp/widgets/custom_text_form_field.dart';

class CreateAccountPatientPage extends StatefulWidget {
  const CreateAccountPatientPage({Key? key}) : super(key: key);

  @override
  CreateAccountPatientPageState createState() =>
      CreateAccountPatientPageState();
}

// ignore_for_file: must_be_immutable
class CreateAccountPatientPageState extends State<CreateAccountPatientPage>
    with AutomaticKeepAliveClientMixin<CreateAccountPatientPage> {
  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('234');

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillWhiteA,
                child: Column(
                  children: [
                    SizedBox(height: 31.v),
                    Padding(
                      padding: EdgeInsets.only(left: 19.h, right: 15.h),
                      child: Column(
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Create an account to get started",
                                  style: theme.textTheme.bodyLarge)),
                          SizedBox(height: 27.v),
                          _buildFrame(context),
                          SizedBox(height: 19.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Phone Number",
                                  style: theme.textTheme.titleMedium)),
                          SizedBox(height: 10.v),
                          _buildPhoneNumber(context),
                          SizedBox(height: 19.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Email",
                                  style: theme.textTheme.titleMedium)),
                          SizedBox(height: 10.v),
                          _buildEmail(context),
                          SizedBox(height: 19.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Password",
                                  style: theme.textTheme.titleMedium)),
                          SizedBox(height: 10.v),
                          _buildPassword(context),
                          SizedBox(height: 19.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Confirm Password",
                                  style: theme.textTheme.titleMedium)),
                          SizedBox(height: 10.v),
                          _buildConfirmPassword(context),
                          SizedBox(height: 22.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  width: 378.h,
                                  margin: EdgeInsets.only(right: 16.h),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text:
                                                "By creating an account, you agree to ",
                                            style: CustomTextStyles
                                                .bodySmallff2b2a29),
                                        TextSpan(
                                            text: "Medplus’",
                                            style: CustomTextStyles
                                                .bodySmallff2b2a29),
                                        TextSpan(
                                            text: "s ",
                                            style: CustomTextStyles
                                                .bodySmallff2b2a29),
                                        TextSpan(
                                            text: "Terms of Service ",
                                            style: CustomTextStyles
                                                .bodySmallffd12b2f),
                                        TextSpan(
                                            text: "and ",
                                            style: CustomTextStyles
                                                .bodySmallff2b2a29),
                                        TextSpan(
                                            text: "Privacy Policy",
                                            style: CustomTextStyles
                                                .bodySmallffd12b2f),
                                        TextSpan(text: " ")
                                      ]),
                                      textAlign: TextAlign.left))),
                          SizedBox(height: 86.v),
                          _buildCreateAccount(context),
                          SizedBox(height: 21.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "Have an account? ",
                                        style: CustomTextStyles.bodyMediumff2b2a29),

                                  ]),
                                  textAlign: TextAlign.left),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignInScreen() ));
                                },
                                child: Text(
                                    "Sign In",
                                    style: CustomTextStyles.bodyMediumffd12b2f
                                ),
                              ),

                            ],

                          ),
                          // RichText(
                          //     text: TextSpan(children: [
                          //       TextSpan(
                          //           text: "Have an account? ",
                          //           style: CustomTextStyles.bodyMediumff2b2a29),
                          //       TextSpan(
                          //           text: "Sign In",
                          //           style: CustomTextStyles.bodyMediumffd12b2f)
                          //     ]),
                          //     textAlign: TextAlign.left),
                          // GestureDetector(
                          //   onTap: (){
                          //     Navigator.push(context, MaterialPageRoute(builder: (context) => SignInScreen() ));
                          //   },
                          //   child: Text(
                          //       "Sign In",
                          //       style: CustomTextStyles.bodyMediumffd12b2f, fontSize= 10,) ,
                          // ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFirstName(BuildContext context) {
    return CustomTextFormField(
      width: 190.h,
      controller: firstNameController,
      hintText: "Enter",
      contentPadding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 11.v),
    );
  }

  /// Section Widget
  Widget _buildLastName(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 7.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Last Name", style: theme.textTheme.titleMedium),
          SizedBox(height: 9.v),
          CustomTextFormField(
              width: 190.h,
              controller: lastNameController,
              hintText: "Enter",
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20.h, vertical: 11.v))
        ]));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
          padding: EdgeInsets.only(right: 7.h),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("First Name", style: theme.textTheme.titleMedium),
            SizedBox(height: 10.v),
            _buildFirstName(context)
          ])),
      _buildLastName(context)
    ]);
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return CustomPhoneNumber(
        country: selectedCountry,
        controller: phoneNumberController,
        onTap: (Country value) {
          selectedCountry = value;
        });
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(controller: emailController, hintText: "Enter");
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
        controller: passwordController,
        hintText: "Enter",
        textInputType: TextInputType.visiblePassword,
        suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 9.v, 13.h, 9.v),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.h)),
            child: CustomImageView(
                imagePath: ImageConstant.imgIconBlueGray40002,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 42.v),
        obscureText: true,
        contentPadding: EdgeInsets.only(left: 20.h, top: 12.v, bottom: 12.v));
  }

  /// Section Widget
  Widget _buildConfirmPassword(BuildContext context) {
    return CustomTextFormField(
        controller: confirmPasswordController,
        hintText: "Enter",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 9.v, 13.h, 9.v),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.h)),
            child: CustomImageView(
                imagePath: ImageConstant.imgIconBlueGray40002,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 42.v),
        obscureText: true,
        contentPadding: EdgeInsets.only(left: 20.h, top: 12.v, bottom: 12.v));
  }

  /// Section Widget
  Widget _buildCreateAccount(BuildContext context) {
    return CustomElevatedButton(
        text: "Create Account",
        onPressed: () {
          onTapCreateAccount(context);
        });
  }

  /// Navigates to the otpAuthenticationScreen when the action is triggered.
  onTapCreateAccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.otpAuthenticationScreen);
  }
}

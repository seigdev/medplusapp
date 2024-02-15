import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:medplusapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:medplusapp/widgets/app_bar/custom_app_bar.dart';
import 'package:medplusapp/widgets/custom_checkbox_button.dart';
import 'package:medplusapp/widgets/custom_drop_down.dart';
import 'package:medplusapp/widgets/custom_elevated_button.dart';
import 'package:medplusapp/widgets/custom_phone_number.dart';
import 'package:medplusapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class CheckoutScreen extends StatelessWidget {
  CheckoutScreen({Key? key}) : super(key: key);

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('234');

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList2 = ["Item One", "Item Two", "Item Three"];

  TextEditingController addressController = TextEditingController();

  bool saveaspreferredaddress = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 20.v),
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 18.h),
                        child: Column(children: [
                          _buildFrame(context),
                          SizedBox(height: 28.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Contact Information",
                                  style: theme.textTheme.titleLarge)),
                          SizedBox(height: 30.v),
                          _buildFrame2(context),
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
                          SizedBox(height: 15.v),
                          Divider(color: appTheme.gray30001),
                          SizedBox(height: 15.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Shipping Address",
                                  style: theme.textTheme.titleLarge)),
                          SizedBox(height: 29.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Country",
                                  style: theme.textTheme.titleMedium)),
                          SizedBox(height: 13.v),
                          CustomDropDown(
                              hintText: "Select",
                              hintStyle: CustomTextStyles.bodyMediumBluegray500,
                              items: dropdownItemList,
                              onChanged: (value) {}),
                          SizedBox(height: 20.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("State",
                                  style: theme.textTheme.titleMedium)),
                          SizedBox(height: 14.v),
                          CustomDropDown(
                              hintText: "Select",
                              hintStyle: CustomTextStyles.bodyMediumBluegray500,
                              items: dropdownItemList1,
                              onChanged: (value) {}),
                          SizedBox(height: 21.v),
                          _buildAddress1(context),
                          SizedBox(height: 20.v),
                          _buildSaveaspreferredaddress(context)
                        ]))))));
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
            text: "Checkout", margin: EdgeInsets.only(left: 35.h)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 17.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
              width: 228.h,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                    width: 24.adaptSize,
                    padding:
                        EdgeInsets.symmetric(horizontal: 9.h, vertical: 3.v),
                    decoration: AppDecoration.fillGreen.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10),
                    child: Text("1",
                        style: CustomTextStyles
                            .titleSmallPrimaryContainerSemiBold)),
                Padding(
                    padding: EdgeInsets.only(left: 5.h, top: 4.v, bottom: 2.v),
                    child: Text("Shipping", style: theme.textTheme.titleSmall)),
                Padding(
                    padding: EdgeInsets.only(top: 12.v, bottom: 11.v),
                    child: SizedBox(
                        width: 35.h,
                        child: Divider(color: appTheme.gray400, indent: 15.h))),
                CustomImageView(
                    imagePath: ImageConstant.imgFrame1000000857,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(left: 15.h)),
                Padding(
                    padding: EdgeInsets.only(left: 5.h, top: 5.v),
                    child: Text("Payment",
                        style: CustomTextStyles.bodyMediumGray400))
              ])),
          Padding(
              padding: EdgeInsets.only(top: 12.v, bottom: 11.v),
              child: SizedBox(
                  width: 35.h,
                  child: Divider(color: appTheme.gray400, indent: 15.h))),
          CustomImageView(
              imagePath: ImageConstant.imgFrame1000000857,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(left: 15.h)),
          Padding(
              padding: EdgeInsets.only(left: 5.h, top: 3.v, bottom: 3.v),
              child: Text("Review", style: CustomTextStyles.bodyMediumGray400))
        ]));
  }

  /// Section Widget
  Widget _buildFirstName(BuildContext context) {
    return CustomTextFormField(
        width: 190.h,
        controller: firstNameController,
        hintText: "Enter",
        contentPadding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 11.v));
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 5.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("Last Name", style: theme.textTheme.titleMedium),
              SizedBox(height: 9.v),
              CustomTextFormField(
                  width: 190.h,
                  controller: lastNameController,
                  hintText: "Enter",
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.h, vertical: 11.v))
            ])));
  }

  /// Section Widget
  Widget _buildFrame2(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
          child: Padding(
              padding: EdgeInsets.only(right: 5.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("First Name", style: theme.textTheme.titleMedium),
                    SizedBox(height: 10.v),
                    _buildFirstName(context)
                  ]))),
      _buildFrame1(context)
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
  Widget _buildAddress(BuildContext context) {
    return CustomTextFormField(
        controller: addressController,
        hintText: "Enter",
        textInputAction: TextInputAction.done);
  }

  /// Section Widget
  Widget _buildContinue(BuildContext context) {
    return CustomElevatedButton(
        height: 52.v,
        width: 390.h,
        text: "Continue",
        onPressed: () {
          onTapContinue(context);
        },
        alignment: Alignment.center);
  }

  /// Section Widget
  Widget _buildAddress1(BuildContext context) {
    return SizedBox(
        height: 178.v,
        width: 390.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("City", style: theme.textTheme.titleMedium),
                    SizedBox(height: 13.v),
                    CustomDropDown(
                        hintText: "Select",
                        hintStyle: CustomTextStyles.bodyMediumBluegray500,
                        items: dropdownItemList2,
                        onChanged: (value) {})
                  ])),
          Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Address", style: theme.textTheme.titleMedium),
                    SizedBox(height: 15.v),
                    _buildAddress(context)
                  ])),
          _buildContinue(context)
        ]));
  }

  /// Section Widget
  Widget _buildSaveaspreferredaddress(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: CustomCheckboxButton(
            alignment: Alignment.centerLeft,
            text: "Save as preferred address",
            value: saveaspreferredaddress,
            onChange: (value) {
              saveaspreferredaddress = value;
            }));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the paymentScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.paymentScreen);
  }
}

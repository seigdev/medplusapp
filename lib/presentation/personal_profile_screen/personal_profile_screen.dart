import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:medplusapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:medplusapp/widgets/app_bar/custom_app_bar.dart';
import 'package:medplusapp/widgets/custom_drop_down.dart';
import 'package:medplusapp/widgets/custom_elevated_button.dart';
import 'package:medplusapp/widgets/custom_phone_number.dart';
import 'package:medplusapp/widgets/custom_radio_button.dart';
import 'package:medplusapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class PersonalProfileScreen extends StatelessWidget {
  PersonalProfileScreen({Key? key}) : super(key: key);

  String radioGroup = "";

  List<String> radioList = ["lbl_medical_officer", "lbl_consultant"];

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  TextEditingController emailController = TextEditingController();

  Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('234');

  TextEditingController phoneNumberController = TextEditingController();

  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList2 = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList3 = ["Item One", "Item Two", "Item Three"];

  TextEditingController addressController = TextEditingController();

  List<String> dropdownItemList4 = ["Item One", "Item Two", "Item Three"];

  TextEditingController entervalueController = TextEditingController();

  TextEditingController priceController = TextEditingController();

  TextEditingController entervalueController1 = TextEditingController();

  TextEditingController entervalueController2 = TextEditingController();

  List<String> dropdownItemList5 = ["Item One", "Item Two", "Item Three"];

  TextEditingController entervalueController3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 16.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              margin: EdgeInsets.only(bottom: 5.v),
                              padding: EdgeInsets.symmetric(horizontal: 19.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        "Update your photo and personal details here",
                                        style: theme.textTheme.bodyLarge),
                                    SizedBox(height: 28.v),
                                    Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgRectangle11780x80,
                                          height: 80.adaptSize,
                                          width: 80.adaptSize,
                                          radius: BorderRadius.circular(10.h)),
                                      Container(
                                          width: 101.h,
                                          margin: EdgeInsets.only(
                                              left: 8.h,
                                              top: 25.v,
                                              bottom: 25.v),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 4.h, vertical: 5.v),
                                          decoration: AppDecoration.white
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder15),
                                          child: Text("Upload Photo",
                                              style: CustomTextStyles
                                                  .titleSmallPrimary))
                                    ]),
                                    SizedBox(height: 30.v),
                                    _buildFrame12486(context),
                                    SizedBox(height: 19.v),
                                    _buildFrame2(context),
                                    SizedBox(height: 21.v),
                                    Text("Specialty",
                                        style: theme.textTheme.titleMedium),
                                    SizedBox(height: 13.v),
                                    CustomDropDown(
                                        hintText: "Select",
                                        hintStyle: CustomTextStyles
                                            .bodyMediumBluegray500,
                                        items: dropdownItemList,
                                        onChanged: (value) {}),
                                    SizedBox(height: 19.v),
                                    Text("Email",
                                        style: theme.textTheme.titleMedium),
                                    SizedBox(height: 10.v),
                                    _buildEmail(context),
                                    SizedBox(height: 19.v),
                                    Text("Phone Number",
                                        style: theme.textTheme.titleMedium),
                                    SizedBox(height: 10.v),
                                    _buildPhoneNumber(context),
                                    SizedBox(height: 21.v),
                                    Text("Country",
                                        style: theme.textTheme.titleMedium),
                                    SizedBox(height: 13.v),
                                    CustomDropDown(
                                        hintText: "Select",
                                        hintStyle: CustomTextStyles
                                            .bodyMediumBluegray500,
                                        items: dropdownItemList1,
                                        onChanged: (value) {}),
                                    SizedBox(height: 20.v),
                                    Text("State",
                                        style: theme.textTheme.titleMedium),
                                    SizedBox(height: 14.v),
                                    CustomDropDown(
                                        hintText: "Select",
                                        hintStyle: CustomTextStyles
                                            .bodyMediumBluegray500,
                                        items: dropdownItemList2,
                                        onChanged: (value) {}),
                                    SizedBox(height: 21.v),
                                    Text("City",
                                        style: theme.textTheme.titleMedium),
                                    SizedBox(height: 13.v),
                                    CustomDropDown(
                                        hintText: "Select",
                                        hintStyle: CustomTextStyles
                                            .bodyMediumBluegray500,
                                        items: dropdownItemList3,
                                        onChanged: (value) {}),
                                    SizedBox(height: 19.v),
                                    Text("Address",
                                        style: theme.textTheme.titleMedium),
                                    SizedBox(height: 15.v),
                                    _buildAddress(context),
                                    SizedBox(height: 19.v),
                                    Text("Date of Birth",
                                        style: theme.textTheme.titleMedium),
                                    SizedBox(height: 15.v),
                                    _buildFrame3(context),
                                    SizedBox(height: 19.v),
                                    Text("Gender",
                                        style: theme.textTheme.titleMedium),
                                    SizedBox(height: 15.v),
                                    CustomDropDown(
                                        hintText: "Select",
                                        hintStyle: CustomTextStyles
                                            .bodyMediumBluegray500,
                                        items: dropdownItemList4,
                                        onChanged: (value) {}),
                                    SizedBox(height: 19.v),
                                    Text("Folio Number",
                                        style: theme.textTheme.titleMedium),
                                    SizedBox(height: 15.v),
                                    _buildEntervalue(context),
                                    SizedBox(height: 19.v),
                                    Text("Consultation Rate",
                                        style: theme.textTheme.titleMedium),
                                    SizedBox(height: 15.v),
                                    _buildPrice(context),
                                    SizedBox(height: 19.v),
                                    Text("Years in Practice",
                                        style: theme.textTheme.titleMedium),
                                    SizedBox(height: 15.v),
                                    _buildEntervalue1(context),
                                    SizedBox(height: 20.v),
                                    Divider(),
                                    SizedBox(height: 20.v),
                                    Text("Qualification(s)",
                                        style: CustomTextStyles
                                            .titleMediumSecondaryContainer),
                                    SizedBox(height: 18.v),
                                    Text("Issuer",
                                        style: theme.textTheme.titleMedium),
                                    SizedBox(height: 14.v),
                                    _buildEntervalue2(context),
                                    SizedBox(height: 21.v),
                                    Text("Qualification",
                                        style: theme.textTheme.titleMedium),
                                    SizedBox(height: 13.v),
                                    CustomDropDown(
                                        hintText: "Select",
                                        hintStyle: CustomTextStyles
                                            .bodyMediumBluegray500,
                                        items: dropdownItemList5,
                                        onChanged: (value) {}),
                                    SizedBox(height: 19.v),
                                    Text("Graduation Year",
                                        style: theme.textTheme.titleMedium),
                                    SizedBox(height: 15.v),
                                    _buildEntervalue3(context),
                                    SizedBox(height: 20.v),
                                    Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgPlus,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 4.h, top: 4.v, bottom: 2.v),
                                          child: Text("Add Qualification",
                                              style: CustomTextStyles
                                                  .titleSmallPrimarySemiBold))
                                    ])
                                  ]))))
                ])),
            bottomNavigationBar: _buildSave(context)));
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
            text: "Personal Profile", margin: EdgeInsets.only(left: 35.h)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildFrame12486(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 108.h),
        child: Row(children: [
          CustomRadioButton(
              text: "Medical Officer",
              value: radioList[0],
              groupValue: radioGroup,
              padding: EdgeInsets.symmetric(vertical: 1.v),
              onChange: (value) {
                radioGroup = value;
              }),
          Padding(
              padding: EdgeInsets.only(left: 47.h),
              child: CustomRadioButton(
                  text: "Consultant",
                  value: radioList[1],
                  groupValue: radioGroup,
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  onChange: (value) {
                    radioGroup = value;
                  }))
        ]));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("First Name", style: theme.textTheme.titleMedium),
      SizedBox(height: 10.v),
      CustomTextFormField(
          width: 190.h, controller: firstNameController, hintText: "Enter")
    ]);
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Last Name", style: theme.textTheme.titleMedium),
      SizedBox(height: 9.v),
      CustomTextFormField(
          width: 186.h, controller: lastNameController, hintText: "Enter")
    ]);
  }

  /// Section Widget
  Widget _buildFrame2(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [_buildFrame(context), _buildFrame1(context)]);
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(controller: emailController, hintText: "Enter");
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
  Widget _buildAddress(BuildContext context) {
    return CustomTextFormField(
        controller: addressController, hintText: "Enter");
  }

  /// Section Widget
  Widget _buildFrame3(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 12.v),
        decoration: AppDecoration.outlineIndigo
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder7),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 1.v),
              child: Text("DD/MM/YYYY",
                  style: CustomTextStyles.bodyMediumBluegray500)),
          CustomImageView(
              imagePath: ImageConstant.imgIcrounddaterange,
              height: 20.adaptSize,
              width: 20.adaptSize,
              margin: EdgeInsets.only(right: 6.h))
        ]));
  }

  /// Section Widget
  Widget _buildEntervalue(BuildContext context) {
    return CustomTextFormField(
        controller: entervalueController, hintText: "Enter");
  }

  /// Section Widget
  Widget _buildPrice(BuildContext context) {
    return CustomTextFormField(
        controller: priceController, hintText: "(NGN) -");
  }

  /// Section Widget
  Widget _buildEntervalue1(BuildContext context) {
    return CustomTextFormField(
        controller: entervalueController1, hintText: "Enter");
  }

  /// Section Widget
  Widget _buildEntervalue2(BuildContext context) {
    return CustomTextFormField(
        controller: entervalueController2, hintText: "Enter");
  }

  /// Section Widget
  Widget _buildEntervalue3(BuildContext context) {
    return CustomTextFormField(
        controller: entervalueController3,
        hintText: "Enter",
        textInputAction: TextInputAction.done);
  }

  /// Section Widget
  Widget _buildSave(BuildContext context) {
    return CustomElevatedButton(
        text: "Save",
        margin: EdgeInsets.only(left: 19.h, right: 19.h, bottom: 21.v));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

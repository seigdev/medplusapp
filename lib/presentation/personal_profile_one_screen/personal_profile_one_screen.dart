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
import 'package:medplusapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class PersonalProfileOneScreen extends StatelessWidget {
  PersonalProfileOneScreen({Key? key}) : super(key: key);

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('234');

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList2 = ["Item One", "Item Two", "Item Three"];

  TextEditingController addressController = TextEditingController();

  TextEditingController dateOfBirthController = TextEditingController();

  List<String> dropdownItemList3 = ["Item One", "Item Two", "Item Three"];

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
                                          imagePath:
                                              ImageConstant.imgRectangle117,
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
                                    SizedBox(height: 29.v),
                                    _buildPersonalProfileFrame(context),
                                    SizedBox(height: 19.v),
                                    Text("Phone Number",
                                        style: theme.textTheme.titleMedium),
                                    SizedBox(height: 10.v),
                                    _buildPhoneNumber(context),
                                    SizedBox(height: 19.v),
                                    Text("Email",
                                        style: theme.textTheme.titleMedium),
                                    SizedBox(height: 10.v),
                                    _buildEmail(context),
                                    SizedBox(height: 21.v),
                                    Text("Country",
                                        style: theme.textTheme.titleMedium),
                                    SizedBox(height: 13.v),
                                    CustomDropDown(
                                        hintText: "Select",
                                        hintStyle: CustomTextStyles
                                            .bodyMediumBluegray500,
                                        items: dropdownItemList,
                                        onChanged: (value) {}),
                                    SizedBox(height: 20.v),
                                    Text("State",
                                        style: theme.textTheme.titleMedium),
                                    SizedBox(height: 14.v),
                                    CustomDropDown(
                                        hintText: "Select",
                                        hintStyle: CustomTextStyles
                                            .bodyMediumBluegray500,
                                        items: dropdownItemList1,
                                        onChanged: (value) {}),
                                    SizedBox(height: 21.v),
                                    Text("City",
                                        style: theme.textTheme.titleMedium),
                                    SizedBox(height: 13.v),
                                    CustomDropDown(
                                        hintText: "Select",
                                        hintStyle: CustomTextStyles
                                            .bodyMediumBluegray500,
                                        items: dropdownItemList2,
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
                                    _buildDateOfBirth(context),
                                    SizedBox(height: 19.v),
                                    Text("Gender",
                                        style: theme.textTheme.titleMedium),
                                    SizedBox(height: 15.v),
                                    CustomDropDown(
                                        hintText: "Select",
                                        hintStyle: CustomTextStyles
                                            .bodyMediumBluegray500,
                                        items: dropdownItemList3,
                                        onChanged: (value) {})
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
  Widget _buildPersonalProfileFrame1(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("First Name", style: theme.textTheme.titleMedium),
      SizedBox(height: 10.v),
      CustomTextFormField(
          width: 190.h, controller: firstNameController, hintText: "Enter")
    ]);
  }

  /// Section Widget
  Widget _buildPersonalProfileFrame2(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Last Name", style: theme.textTheme.titleMedium),
      SizedBox(height: 9.v),
      CustomTextFormField(
          width: 186.h, controller: lastNameController, hintText: "Enter")
    ]);
  }

  /// Section Widget
  Widget _buildPersonalProfileFrame(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      _buildPersonalProfileFrame1(context),
      _buildPersonalProfileFrame2(context)
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
        controller: addressController, hintText: "Enter");
  }

  /// Section Widget
  Widget _buildDateOfBirth(BuildContext context) {
    return CustomTextFormField(
        controller: dateOfBirthController,
        hintText: "DD/MM/YYYY",
        textInputAction: TextInputAction.done,
        suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 13.v, 21.h, 13.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgIcrounddaterange,
                height: 20.adaptSize,
                width: 20.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 46.v),
        contentPadding: EdgeInsets.only(left: 15.h, top: 14.v, bottom: 14.v));
  }

  /// Section Widget
  Widget _buildSave(BuildContext context) {
    return CustomElevatedButton(
        text: "Save",
        margin: EdgeInsets.only(left: 19.h, right: 19.h, bottom: 32.v));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

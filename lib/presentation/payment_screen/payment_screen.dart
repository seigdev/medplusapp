import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:medplusapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:medplusapp/widgets/app_bar/custom_app_bar.dart';
import 'package:medplusapp/widgets/custom_elevated_button.dart';
import 'package:medplusapp/widgets/custom_radio_button.dart';
import 'package:medplusapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class PaymentScreen extends StatelessWidget {
  PaymentScreen({Key? key}) : super(key: key);

  String youWillNotBeChargedUntilYouRev = "";

  List<String> radioList = ["lbl_wallet", "lbl_credit_card"];

  TextEditingController nameController = TextEditingController();

  TextEditingController cardNumberController = TextEditingController();

  TextEditingController expirydateController = TextEditingController();

  TextEditingController securityCodeController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 19.h, vertical: 20.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildFrame(context),
                                  SizedBox(height: 31.v),
                                  Text("Choose a Payment Method",
                                      style: CustomTextStyles.titleMedium18),
                                  SizedBox(height: 18.v),
                                  Container(
                                      width: 351.h,
                                      margin: EdgeInsets.only(right: 38.h),
                                      child: Text(
                                          "You will not be charged until you review your order on the next page",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.bodyLarge!
                                              .copyWith(height: 1.38))),
                                  SizedBox(height: 28.v),
                                  _buildYouWillNotBeChargedUntilYouRev(context),
                                  SizedBox(height: 21.v),
                                  Text("Name",
                                      style: theme.textTheme.titleMedium),
                                  SizedBox(height: 14.v),
                                  _buildName(context),
                                  SizedBox(height: 19.v),
                                  Text("Card Number",
                                      style: theme.textTheme.titleMedium),
                                  SizedBox(height: 15.v),
                                  _buildCardNumber(context),
                                  SizedBox(height: 21.v),
                                  _buildExpirydate(context),
                                  SizedBox(height: 5.v)
                                ]))))),
            bottomNavigationBar: _buildContinue(context)));
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
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 17.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgTeenyiconsTickCircleSolid,
                  height: 24.adaptSize,
                  width: 24.adaptSize),
              Padding(
                  padding: EdgeInsets.only(left: 5.h, top: 4.v, bottom: 2.v),
                  child: Text("Shipping", style: theme.textTheme.titleSmall)),
              Padding(
                  padding: EdgeInsets.only(top: 12.v, bottom: 11.v),
                  child: SizedBox(
                      width: 35.h,
                      child: Divider(color: appTheme.gray400, indent: 15.h))),
              Container(
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(left: 15.h),
                  padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 3.v),
                  decoration: AppDecoration.fillGreen.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: Text("2",
                      style:
                          CustomTextStyles.titleSmallPrimaryContainerSemiBold)),
              Padding(
                  padding: EdgeInsets.only(left: 5.h, top: 5.v),
                  child: Text("Payment", style: theme.textTheme.titleSmall)),
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
                  child:
                      Text("Review", style: CustomTextStyles.bodyMediumGray400))
            ])));
  }

  /// Section Widget
  Widget _buildYouWillNotBeChargedUntilYouRev(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 274.h),
        child: Column(children: [
          Padding(
              padding: EdgeInsets.only(right: 40.h),
              child: CustomRadioButton(
                  text: "Wallet",
                  value: radioList[0],
                  groupValue: youWillNotBeChargedUntilYouRev,
                  textStyle: theme.textTheme.bodyLarge,
                  onChange: (value) {
                    youWillNotBeChargedUntilYouRev = value;
                  })),
          Padding(
              padding: EdgeInsets.only(top: 31.v),
              child: CustomRadioButton(
                  text: "Credit Card",
                  value: radioList[1],
                  groupValue: youWillNotBeChargedUntilYouRev,
                  textStyle: theme.textTheme.titleMedium,
                  onChange: (value) {
                    youWillNotBeChargedUntilYouRev = value;
                  }))
        ]));
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return CustomTextFormField(
        controller: nameController, hintText: "Enter full name");
  }

  /// Section Widget
  Widget _buildCardNumber(BuildContext context) {
    return CustomTextFormField(
        controller: cardNumberController, hintText: "Enter");
  }

  /// Section Widget
  Widget _buildTwentySeven(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(right: 5.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("Expiry Date", style: theme.textTheme.titleMedium),
              SizedBox(height: 8.v),
              CustomTextFormField(
                  width: 190.h,
                  controller: expirydateController,
                  hintText: "MM/YY")
            ])));
  }

  /// Section Widget
  Widget _buildSecurityCode(BuildContext context) {
    return CustomTextFormField(
        width: 190.h,
        controller: securityCodeController,
        hintText: "Enter CVV",
        textInputAction: TextInputAction.done);
  }

  /// Section Widget
  Widget _buildExpirydate(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      _buildTwentySeven(context),
      Expanded(
          child: Padding(
              padding: EdgeInsets.only(left: 5.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Security Code", style: theme.textTheme.titleMedium),
                    SizedBox(height: 8.v),
                    _buildSecurityCode(context)
                  ])))
    ]);
  }

  /// Section Widget
  Widget _buildContinue(BuildContext context) {
    return CustomElevatedButton(
        height: 52.v,
        text: "Continue",
        margin: EdgeInsets.only(left: 19.h, right: 19.h, bottom: 30.v),
        onPressed: () {
          onTapContinue(context);
        });
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the reviewScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.reviewScreen);
  }
}

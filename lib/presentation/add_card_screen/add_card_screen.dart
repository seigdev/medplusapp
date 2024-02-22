import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:medplusapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:medplusapp/widgets/app_bar/custom_app_bar.dart';
import 'package:medplusapp/widgets/custom_elevated_button.dart';
import 'package:medplusapp/widgets/custom_switch.dart';
import 'package:medplusapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AddCardScreen extends StatelessWidget {
  AddCardScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController cardNumberController = TextEditingController();

  TextEditingController expirydateController = TextEditingController();

  TextEditingController cvvController = TextEditingController();

  TextEditingController cardPinvalueController = TextEditingController();

  bool isSelectedSwitch = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 17.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Add card to fund your wallet",
                          style: theme.textTheme.bodyLarge),
                      SizedBox(height: 30.v),
                      Text("Name on Card", style: theme.textTheme.titleMedium),
                      SizedBox(height: 10.v),
                      _buildName(context),
                      SizedBox(height: 19.v),
                      Text("Card Number", style: theme.textTheme.titleMedium),
                      SizedBox(height: 15.v),
                      _buildCardNumber(context),
                      SizedBox(height: 20.v),
                      _buildFrame1(context),
                      SizedBox(height: 19.v),
                      Text("Card Pin", style: theme.textTheme.titleMedium),
                      SizedBox(height: 15.v),
                      _buildCardPinvalue(context),
                      SizedBox(height: 21.v),
                      Row(children: [
                        Text("Save Card",
                            style: CustomTextStyles.titleSmallGray90002),
                        CustomSwitch(
                            margin: EdgeInsets.only(left: 8.h),
                            value: isSelectedSwitch,
                            onChange: (value) {
                              isSelectedSwitch = value;
                            })
                      ]),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildAdd(context)));
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
            text: "Add Card", margin: EdgeInsets.only(left: 35.h)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return CustomTextFormField(controller: nameController, hintText: "Enter");
  }

  /// Section Widget
  Widget _buildCardNumber(BuildContext context) {
    return CustomTextFormField(
        controller: cardNumberController, hintText: "Enter");
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 1.v),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Expiry Date", style: theme.textTheme.titleMedium),
          SizedBox(height: 8.v),
          CustomTextFormField(
              width: 190.h, controller: expirydateController, hintText: "Enter")
        ]));
  }

  /// Section Widget
  Widget _buildCvv(BuildContext context) {
    return CustomTextFormField(
        width: 186.h, controller: cvvController, hintText: "Enter");
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      _buildFrame(context),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("CVV", style: theme.textTheme.titleMedium),
        SizedBox(height: 9.v),
        _buildCvv(context)
      ])
    ]);
  }

  /// Section Widget
  Widget _buildCardPinvalue(BuildContext context) {
    return CustomTextFormField(
        controller: cardPinvalueController,
        hintText: "Enter",
        textInputAction: TextInputAction.done);
  }

  /// Section Widget
  Widget _buildAdd(BuildContext context) {
    return CustomElevatedButton(
        text: "Add",
        margin: EdgeInsets.only(left: 19.h, right: 19.h, bottom: 30.v),
        onPressed: () {
          onTapAdd(context);
        });
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the fundWalletScreen when the action is triggered.
  onTapAdd(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.fundWalletScreen);
  }
}

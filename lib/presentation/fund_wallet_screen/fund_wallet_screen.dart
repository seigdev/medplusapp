import '../fund_wallet_screen/widgets/creditcardlist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:medplusapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:medplusapp/widgets/app_bar/custom_app_bar.dart';
import 'package:medplusapp/widgets/custom_elevated_button.dart';

class FundWalletScreen extends StatelessWidget {
  const FundWalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 17.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Select card to fund your wallet",
                          style: theme.textTheme.bodyLarge),
                      SizedBox(height: 32.v),
                      _buildCreditCardList(context),
                      SizedBox(height: 29.v),
                      GestureDetector(
                          onTap: () {
                            onTapFrame(context);
                          },
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgPlus,
                                height: 24.adaptSize,
                                width: 24.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 4.h, top: 2.v, bottom: 2.v),
                                child: Text("Add Card",
                                    style: CustomTextStyles.titleMediumPrimary))
                          ])),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildFundButton(context)));
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
            text: "Fund Wallet", margin: EdgeInsets.only(left: 35.h)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildCreditCardList(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return Padding(
              padding: EdgeInsets.symmetric(vertical: 15.5.v),
              child: SizedBox(
                  width: 390.h,
                  child: Divider(
                      height: 1.v, thickness: 1.v, color: appTheme.indigo100)));
        },
        itemCount: 1,
        itemBuilder: (context, index) {
          return CreditcardlistItemWidget();
        });
  }

  /// Section Widget
  Widget _buildFundButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Fund",
        margin: EdgeInsets.only(left: 19.h, right: 19.h, bottom: 30.v),
        onPressed: () {
          onTapFundButton(context);
        });
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the addCardScreen when the action is triggered.
  onTapFrame(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addCardScreen);
  }

  /// Navigates to the walletScreen when the action is triggered.
  onTapFundButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.walletScreen);
  }
}

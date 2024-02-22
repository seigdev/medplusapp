import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/presentation/create_wallet_screen/provider/create_wallet_provider.dart';
import 'package:medplusapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:medplusapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:medplusapp/widgets/app_bar/custom_app_bar.dart';
import 'package:medplusapp/widgets/custom_elevated_button.dart';
import 'package:medplusapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable

class CreateWalletScreen extends ConsumerWidget {
  CreateWalletScreen({super.key});

  TextEditingController nameController = TextEditingController();

  TextEditingController autogeneratedvalueController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 15.v),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: 351.h,
                margin: EdgeInsets.only(right: 38.h),
                child: Text(
                    "Create a wallet account to transact easily on Medplus",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyLarge!.copyWith(height: 1.38))),
            SizedBox(height: 29.v),
            Text("Name", style: theme.textTheme.titleMedium),
            SizedBox(height: 9.v),
            CustomTextFormField(
                controller: nameController, hintText: "Auto-filled"),
            SizedBox(height: 19.v),
            Text("Wallet ID", style: theme.textTheme.titleMedium),
            SizedBox(height: 15.v),
            CustomTextFormField(
                controller: autogeneratedvalueController,
                hintText: "Auto-generated",
                textInputAction: TextInputAction.done),
            SizedBox(height: 100.v),
            CustomElevatedButton(
                text: "Create Wallet",
                margin: EdgeInsets.only(left: 19.h, right: 19.h, bottom: 30.v),
                onPressed: () {
                  ref.read(createWalletProvider());
                }),
          ],
        ),
      ),
    );
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
            text: "Create Wallet", margin: EdgeInsets.only(left: 35.h)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildCreateWallet(void Function()? createWallet) {
    return CustomElevatedButton(
        text: "Create Wallet",
        margin: EdgeInsets.only(left: 19.h, right: 19.h, bottom: 30.v),
        onPressed: () {
          onTapCreateWallet(createWallet);
        });
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the walletScreen when the action is triggered.
  onTapCreateWallet(void Function()? createWallet) {
    // Navigator.pushNamed(context, AppRoutes.walletScreen);
    createWallet;
  }
}

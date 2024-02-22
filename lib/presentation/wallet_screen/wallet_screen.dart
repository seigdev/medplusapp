import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:medplusapp/core/services/app_preferences.dart';
import 'package:medplusapp/presentation/wallet_screen/widgets/empty_transaction_widget.dart';
import 'package:medplusapp/presentation/wallet_screen/widgets/empty_wallet_widget.dart';

import '../wallet_screen/widgets/transactiondetailslist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:medplusapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:medplusapp/widgets/app_bar/custom_app_bar.dart';
import 'package:medplusapp/widgets/custom_elevated_button.dart';

import 'data/models/transaction_model.dart';
import 'provider/wallet_provider.dart';

class WalletScreen extends ConsumerStatefulWidget {
  const WalletScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WalletScreenState();
}

class _WalletScreenState extends ConsumerState<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    String? walletStatus = AppPreferences().getWalletStatus();
    final walletData = ref.watch(walletProvider).value;
    final transactionValue = ref.watch(getTransactionProvider);
    return Scaffold(
      appBar: _buildAppBar(context),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 15.v),
          child: walletStatus != 'success'
              ? EmptyWalletWidget()
              : Container(
                  margin: EdgeInsets.only(bottom: 5.v),
                  padding: EdgeInsets.symmetric(horizontal: 19.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildFrame(context,
                          '${amountFormat.format(walletData?.amount)}'),
                      SizedBox(height: 40.v),
                      Text("Transaction History",
                          style: theme.textTheme.titleLarge),
                      SizedBox(height: 28.v),
                      transactionValue.when(
                        data: (data) {
                          final results = data;
                          return results.isEmpty
                              ? EmptyTransactionWidget()
                              : ListView.builder(
                                  itemCount:
                                      results.length > 20 ? 20 : results.length,
                                  itemBuilder: (_, i) {
                                    final transaction = results[i];
                                    return _buildTransactionDetailsList(
                                        context, transaction);
                                  },
                                );
                        },
                        error: (e, s) => Center(child: Text('error')),
                        loading: () => Center(
                          child: SizedBox(
                            child: CircularProgressIndicator.adaptive(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
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
        title:
            AppbarSubtitle(text: "Wallet", margin: EdgeInsets.only(left: 35.h)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildFundWalletButton(BuildContext context) {
    return CustomElevatedButton(
        width: 159.h,
        text: "Fund Wallet",
        margin: EdgeInsets.only(top: 1.v, bottom: 3.v),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 10.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgAkariconsplus,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        buttonTextStyle: CustomTextStyles.titleMediumPrimaryContainerSemiBold);
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context, String walletBalance) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 17.v),
        decoration: AppDecoration.fillPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("₦ $walletBalance",
                        style: theme.textTheme.headlineLarge),
                    SizedBox(height: 1.v),
                    Text("Current Balance", style: theme.textTheme.labelLarge)
                  ])),
          _buildFundWalletButton(context)
        ]));
  }

  /// Section Widget
  Widget _buildTransactionDetailsList(
      BuildContext context, Transaction result) {
    return Padding(
        padding: EdgeInsets.only(right: 3.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 15.v);
            },
            itemCount: 4,
            itemBuilder: (context, index) {
              return TransactiondetailslistItemWidget(
                transaction: result,
              );
            }));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

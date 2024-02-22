import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/presentation/wallet_screen/data/models/transaction_model.dart';
import 'package:medplusapp/widgets/custom_elevated_button.dart';
import 'package:medplusapp/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class TransactiondetailslistItemWidget extends StatelessWidget {
  final Transaction transaction;
  TransactiondetailslistItemWidget({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(right: 5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Transaction ID: ${transaction.id}",
                  style: theme.textTheme.titleSmall,
                ),
                Text(
                  "23/10/2022 | 9:00 AM",
                  style: CustomTextStyles.bodySmallGray400,
                ),
              ],
            ),
          ),
          SizedBox(height: 13.v),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 2.v),
                child: CustomIconButton(
                  height: 35.adaptSize,
                  width: 35.adaptSize,
                  padding: EdgeInsets.all(7.h),
                  decoration: IconButtonStyleHelper.outlinePrimary,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgFluentWalletCPrimary,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Top-Up",
                      style: theme.textTheme.bodyMedium,
                    ),
                    SizedBox(height: 2.v),
                    Text(
                      "Credit",
                      style: CustomTextStyles.bodyMediumBluegray500,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 17.v),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 72.h,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Amount\n",
                        style: CustomTextStyles.bodyMediumff828282,
                      ),
                      TextSpan(
                        text: "₦ 20,000",
                        style: CustomTextStyles.titleMediumff2b2a29SemiBold,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              CustomElevatedButton(
                height: 34.v,
                width: 107.h,
                text: "Successful",
                margin: EdgeInsets.only(
                  left: 173.h,
                  bottom: 5.v,
                ),
                buttonStyle: CustomButtonStyles.fillGreen,
                buttonTextStyle: CustomTextStyles.titleSmallGreen500,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

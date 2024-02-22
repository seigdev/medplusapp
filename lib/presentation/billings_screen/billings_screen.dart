import '../billings_screen/widgets/billdetails_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:medplusapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:medplusapp/widgets/app_bar/appbar_trailing_iconbutton_four.dart';
import 'package:medplusapp/widgets/app_bar/custom_app_bar.dart';

class BillingsScreen extends StatelessWidget {
  const BillingsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 19.h,
            vertical: 8.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 8.v),
              _buildRevenue(context),
              SizedBox(height: 20.v),
              _buildBillDetails(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 82.v,
      leadingWidth: 43.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgGgMenuLeft,
        margin: EdgeInsets.only(
          left: 19.h,
          top: 13.v,
          bottom: 18.v,
        ),
      ),
      title: AppbarSubtitle(
        text: "Billings",
        margin: EdgeInsets.only(left: 35.h),
      ),
      actions: [
        AppbarTrailingIconbuttonFour(
          imagePath: ImageConstant.imgUserPrimarycontainer30x30,
          margin: EdgeInsets.fromLTRB(19.h, 13.v, 19.h, 12.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildRevenue(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlineGray300013.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder7,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Total Bill Value",
                  style: CustomTextStyles.bodyMediumBluegray500,
                ),
                SizedBox(height: 6.v),
                Text(
                  "₦ 50,000.00",
                  style: CustomTextStyles.headlineSmallSemiBold,
                ),
              ],
            ),
          ),
          Container(
            height: 40.v,
            width: 48.h,
            margin: EdgeInsets.symmetric(vertical: 8.v),
            padding: EdgeInsets.symmetric(
              horizontal: 12.h,
              vertical: 8.v,
            ),
            decoration: AppDecoration.fillPrimary2.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgUserPrimarycontainer,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.center,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBillDetails(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 15.v,
        );
      },
      itemCount: 4,
      itemBuilder: (context, index) {
        return BilldetailsItemWidget();
      },
    );
  }
}

// ignore_for_file: must_be_immutable

import '../medications_orders_screen/widgets/orderdetails_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:medplusapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:medplusapp/widgets/app_bar/appbar_trailing_iconbutton_three.dart';
import 'package:medplusapp/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:medplusapp/widgets/app_bar/custom_app_bar.dart';
import 'package:medplusapp/widgets/custom_search_view.dart';
import 'package:medplusapp/widgets/custom_text_form_field.dart';

class MedicationsOrdersScreen extends StatelessWidget {
  MedicationsOrdersScreen({Key? key}) : super(key: key);

  TextEditingController horizontalTabsController = TextEditingController();

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 13.v),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 19.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 7.v),
                        child: Text(
                          "My Medications",
                          style: CustomTextStyles.bodyLargeInterBluegray500,
                        ),
                      ),
                      _buildHorizontalTabs(context),
                    ],
                  ),
                  SizedBox(height: 29.v),
                  CustomSearchView(
                    controller: searchController,
                    hintText: "Search",
                  ),
                  SizedBox(height: 30.v),
                  _buildOrderDetails(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 81.v,
      leadingWidth: 43.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgGgMenuLeft,
        margin: EdgeInsets.only(
          left: 19.h,
          top: 14.v,
          bottom: 17.v,
        ),
      ),
      title: AppbarSubtitle(
        text: "Medications",
        margin: EdgeInsets.only(left: 35.h),
      ),
      actions: [
        AppbarTrailingIconbuttonTwo(
          imagePath: ImageConstant.imgIcBaselineNot,
          margin: EdgeInsets.only(
            left: 19.h,
            top: 14.v,
            right: 11.h,
          ),
        ),
        AppbarTrailingIconbuttonThree(
          imagePath: ImageConstant.imgClarityShoppingCartLine,
          margin: EdgeInsets.only(
            left: 10.h,
            top: 14.v,
            right: 30.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildHorizontalTabs(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 32.h),
      child: CustomTextFormField(
        width: 53.h,
        controller: horizontalTabsController,
        hintText: "Orders",
        hintStyle: theme.textTheme.titleMedium!,
        borderDecoration: TextFormFieldStyleHelper.underLinePrimary,
        filled: false,
      ),
    );
  }

  /// Section Widget
  Widget _buildOrderDetails(BuildContext context) {
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
        return OrderdetailsItemWidget();
      },
    );
  }
}

import '../medications_screen/widgets/medicationdetails_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:medplusapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:medplusapp/widgets/app_bar/appbar_trailing_iconbutton_three.dart';
import 'package:medplusapp/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:medplusapp/widgets/app_bar/custom_app_bar.dart';
import 'package:medplusapp/widgets/custom_search_view.dart';
import 'package:medplusapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class MedicationsScreen extends StatelessWidget {
  MedicationsScreen({Key? key}) : super(key: key);

  TextEditingController horizontalTabsController = TextEditingController();

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 12.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildHorizontalTabs(context),
                            GestureDetector(
                                onTap: () {
                                  onTapTxtOrders(context);
                                },
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 32.h, bottom: 8.v),
                                    child: Text("Orders",
                                        style: CustomTextStyles
                                            .bodyLargeInterBluegray500)))
                          ]),
                      SizedBox(height: 29.v),
                      CustomSearchView(
                          controller: searchController, hintText: "Search"),
                      SizedBox(height: 30.v),
                      _buildMedicationDetails(context)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 81.v,
        leadingWidth: 43.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgGgMenuLeft,
            margin: EdgeInsets.only(left: 19.h, top: 14.v, bottom: 17.v)),
        title: AppbarSubtitle(
            text: "Medications", margin: EdgeInsets.only(left: 35.h)),
        actions: [
          AppbarTrailingIconbuttonTwo(
              imagePath: ImageConstant.imgIcBaselineNot,
              margin: EdgeInsets.only(left: 19.h, top: 14.v, right: 11.h)),
          AppbarTrailingIconbuttonThree(
              imagePath: ImageConstant.imgClarityShoppingCartLine,
              margin: EdgeInsets.only(left: 10.h, top: 14.v, right: 30.h))
        ]);
  }

  /// Section Widget
  Widget _buildHorizontalTabs(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 2.v),
        child: CustomTextFormField(
            width: 122.h,
            controller: horizontalTabsController,
            hintText: "My Medications",
            hintStyle: theme.textTheme.titleMedium!,
            borderDecoration: TextFormFieldStyleHelper.underLinePrimary,
            filled: false));
  }

  /// Section Widget
  Widget _buildMedicationDetails(BuildContext context) {
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
              return MedicationdetailsItemWidget();
            }));
  }

  /// Navigates to the medicationsOrdersScreen when the action is triggered.
  onTapTxtOrders(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.medicationsOrdersScreen);
  }
}

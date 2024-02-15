import '../notifications_one_screen/widgets/newone_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:medplusapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:medplusapp/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class NotificationsOneScreen extends StatelessWidget {
  NotificationsOneScreen({Key? key}) : super(key: key);

  List newoneItemList = [
    {'id': 1, 'groupBy': "New (1)"},
    {'id': 2, 'groupBy': "Earlier"},
    {'id': 3, 'groupBy': "Earlier"},
    {'id': 4, 'groupBy': "Earlier"},
    {'id': 5, 'groupBy': "Earlier"},
    {'id': 6, 'groupBy': "Earlier"},
    {'id': 7, 'groupBy': "Earlier"},
    {'id': 8, 'groupBy': "Earlier"},
    {'id': 9, 'groupBy': "Earlier"}
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.only(left: 19.h, top: 18.v, right: 19.h),
                child: GroupedListView<dynamic, String>(
                    shrinkWrap: true,
                    stickyHeaderBackgroundColor: Colors.transparent,
                    elements: newoneItemList,
                    groupBy: (element) => element['groupBy'],
                    sort: false,
                    groupSeparatorBuilder: (String value) {
                      return Padding(
                          padding: EdgeInsets.only(top: 19.v, bottom: 15.v),
                          child: Text(value,
                              style: CustomTextStyles.labelLargeSemiBold
                                  .copyWith(color: theme.colorScheme.primary)));
                    },
                    itemBuilder: (context, model) {
                      return NewoneItemWidget();
                    }))));
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
            text: "Notifications", margin: EdgeInsets.only(left: 35.h)),
        styleType: Style.bgFill);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

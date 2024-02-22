import '../consultations_one_screen/widgets/userprofile5_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:medplusapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:medplusapp/widgets/app_bar/appbar_trailing_iconbutton_four.dart';
import 'package:medplusapp/widgets/app_bar/custom_app_bar.dart';
import 'package:medplusapp/widgets/custom_search_view.dart';

class ConsultationsOneScreen extends StatefulWidget {
  ConsultationsOneScreen({Key? key}) : super(key: key);

  @override
  State<ConsultationsOneScreen> createState() => _ConsultationsOneScreenState();
}

class _ConsultationsOneScreenState extends State<ConsultationsOneScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 19.h,
            vertical: 29.v,
          ),
          child: Column(
            children: [
              CustomSearchView(
                controller: searchController,
                hintText: "Search",
              ),
              SizedBox(height: 30.v),
              _buildUserProfile(context),
            ],
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
        imagePath: ImageConstant.imgGgMenuLeft,
        margin: EdgeInsets.only(
          left: 19.h,
          top: 40.v,
          bottom: 19.v,
        ),
      ),
      title: AppbarSubtitle(
        text: "Consultations",
        margin: EdgeInsets.only(left: 35.h),
      ),
      actions: [
        AppbarTrailingIconbuttonFour(
          imagePath: ImageConstant.imgUserPrimarycontainer30x30,
          margin: EdgeInsets.fromLTRB(19.h, 37.v, 19.h, 16.v),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 7.5.v),
          child: SizedBox(
            width: 349.h,
            child: Divider(
              height: 1.v,
              thickness: 1.v,
              color: appTheme.gray300,
            ),
          ),
        );
      },
      itemCount: 5,
      itemBuilder: (context, index) {
        return Userprofile5ItemWidget();
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/presentation/create_account_patient_page/create_account_patient_page.dart';
import 'package:medplusapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:medplusapp/widgets/app_bar/appbar_title.dart';
import 'package:medplusapp/widgets/app_bar/custom_app_bar.dart';

import '../../widgets/app_bar/appbar_subtitle.dart';

class CreateAccountPatientTabContainerScreen extends StatefulWidget {
  const CreateAccountPatientTabContainerScreen({Key? key}) : super(key: key);

  @override
  CreateAccountPatientTabContainerScreenState createState() =>
      CreateAccountPatientTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class CreateAccountPatientTabContainerScreenState
    extends State<CreateAccountPatientTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: appTheme.whiteA700,
      appBar: CustomAppBar(

          leadingWidth: (43),
          leading: AppbarLeadingImage(

              imagePath: ImageConstant.imgArrowLeft,
              margin: EdgeInsets.only(left: 19, top: 15, bottom: 15),
              onTap: () {
                onTapArrowleftone();
              }),
          centerTitle: true,
          title: AppbarSubtitle(text: "Get Started",
          )),

     // appBar: _buildAppBar(context),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 12.v),
              _buildTabview(context),
              SizedBox(
                height: 777.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    CreateAccountPatientPage(),
                    CreateAccountPatientPage()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 72.v,
      leadingWidth: 43.h,
      leading: AppbarLeadingImage(
          imagePath: ImageConstant.imgArrowLeftBlack900,
          margin: EdgeInsets.only(left: 19.h, top: 16.v, bottom: 15.v),
          onTap: () {
            onTapArrowLeft(context);
          }),
      centerTitle: true,
      title: AppbarTitle(text: "Get Started"),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 29.v,
      width: 394.h,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.gray900,
        labelStyle: TextStyle(
            fontSize: 16.fSize,
            fontFamily: 'Work Sans',
            fontWeight: FontWeight.w600),
        unselectedLabelColor: appTheme.blueGray500,
        unselectedLabelStyle: TextStyle(
            fontSize: 16.fSize,
            fontFamily: 'Work Sans',
            fontWeight: FontWeight.w400),
        indicatorColor: theme.colorScheme.primary,
        tabs: [
          Tab(child: Text("Patient")),
          Tab(
            child: Text("Doctor"),
          ),
        ],
      ),
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapArrowleftone() {
    Get.back();
  }
}

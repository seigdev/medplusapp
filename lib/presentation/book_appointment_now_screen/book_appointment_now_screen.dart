// ignore_for_file: must_be_immutable

import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/core/utils/app_color.dart';
import 'package:medplusapp/core/utils/navigator_service.dart';
import 'package:medplusapp/presentation/book_appointment_now_screen/providers/book_appointment_provider.dart';
import 'package:medplusapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:medplusapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:medplusapp/widgets/app_bar/custom_app_bar.dart';
import 'package:medplusapp/widgets/custom_drop_down.dart';
import 'package:medplusapp/widgets/custom_elevated_button.dart';
import 'package:medplusapp/widgets/custom_outlined_button.dart';

class BookAppointmentNowScreen extends ConsumerStatefulWidget {
  const BookAppointmentNowScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _BookAppointmentNowScreenState();
}

class _BookAppointmentNowScreenState
    extends ConsumerState<BookAppointmentNowScreen> {
  String radioGroup = "";

  // Selected index of the gender radio.
  int selectedGenderIndex = 0;

  String dropDownValue = "";

  List<String> radioList = ["schedule now", "schedule later"];

  @override
  Widget build(BuildContext context) {
    final specialtyValue = ref.watch(getSpecialtyListProvider);
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 20.v),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomDropDown(
              icon: Container(
                margin: EdgeInsets.fromLTRB(30.h, 10.v, 19.h, 10.v),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(4.h)),
                child: CustomImageView(
                  imagePath: ImageConstant.imgIconGray900,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
              ),
              hintText: "Haematologist",
              hintStyle: CustomTextStyles.titleSmall_1,
              items: specialtyValue.value,
              contentPadding:
                  EdgeInsets.only(left: 20.h, top: 11.v, bottom: 11.v),
              onChanged: (value) {
                setState(() {
                  dropDownValue = value;
                });
              },
            ),
            SizedBox(height: 24.v),
            _buildFrame12484(context),
            SizedBox(height: 29.v),
            Row(children: [
              CustomImageView(
                imagePath: ImageConstant.imgIconPrimary,
                height: 24.adaptSize,
                width: 24.adaptSize,
                color: appColor.accent,
                radius: BorderRadius.circular(4.h),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h, top: 3.v),
                child: Text(
                  "December 12th, 2022",
                  style: theme.textTheme.titleMedium,
                ),
              )
            ]),
            Spacer(),
            CustomElevatedButton(
              height: 43.v,
              text: "Book Appointment",
              onPressed: () {
                ref.read(bookAppointmentProvider(
                  context,
                  dropDownValue,
                  'user',
                  'doctor',
                  DateTime.now(),
                  selectedGenderIndex == 0 ? true : false,
                  10000,
                  'note',
                  'transaction',
                ));
              },
            ),
            SizedBox(height: 20.v),
            CustomOutlinedButton(
              text: "Cancel",
              buttonStyle: CustomButtonStyles.outlinePrimary,
            ),
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
            text: "Book Appointment",
            margin: EdgeInsets.only(left: 35.h, top: 39.v, bottom: 14.v)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildFrame12484(BuildContext context) {
    return schedulePicker(selectedGenderIndex, (p0) {
      setState(() {
        selectedGenderIndex = p0!;
      });
      log(selectedGenderIndex.toString());
    });
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  Widget schedulePicker(int selectedIndex, void Function(int?)? onChanged) =>
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          radioList.length,
          (index) => Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                CupertinoRadio(
                  value: index,
                  groupValue: selectedIndex,
                  activeColor: appColor.accent,
                  onChanged: onChanged,
                ),
                const SizedBox(width: 5),
                Text(radioList[index]),
              ],
            ),
          ),
        ),
      );
}

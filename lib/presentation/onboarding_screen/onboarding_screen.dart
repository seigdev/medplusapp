import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/widgets/custom_elevated_button.dart';

class OnboardingScreen extends ConsumerWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment(0.03, 0.02),
                  end: Alignment(1, 1),
                  colors: [theme.colorScheme.primary, appTheme.blueA400])),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                Spacer(),
                Container(
                    width: 326.h,
                    margin: EdgeInsets.only(left: 50.h, right: 51.h),
                    child: Text("The Online Resource App for Easy Meds",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.headlineLargePrimaryContainer
                            .copyWith(height: 1.25))),
                SizedBox(height: 64.v),
                CustomElevatedButton(
                    height: 48.v,
                    width: 219.h,
                    text: "Get Started",
                    buttonStyle: CustomButtonStyles.fillPrimaryContainer,
                    buttonTextStyle: CustomTextStyles.titleMediumPrimary,
                    onPressed: () {
                      onTapGetStarted(context, ref);
                    }),
                SizedBox(height: 35.v),
                SizedBox(
                  height: 576.v,
                  width: 426.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgGroup5,
                          height: 322.v,
                          width: 324.h,
                          alignment: Alignment.topCenter,
                          margin: EdgeInsets.only(top: 28.v)),
                      CustomImageView(
                          imagePath: ImageConstant.imgDoctorWearing,
                          height: 576.v,
                          width: 426.h,
                          alignment: Alignment.center)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Navigates to the createAccountPatientTabContainerScreen when the action is triggered.
  onTapGetStarted(BuildContext context, WidgetRef ref) {
    Navigator.pushNamed(context, AppRoutes.signInScreen);
  }
}

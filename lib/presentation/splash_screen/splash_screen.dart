import 'package:flutter/material.dart';
import 'package:medplusapp/core/app_export.dart';

import '../../core/utils/navigator_service.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      Duration(milliseconds: 200),
      () => NavigatorService.pushNamed(AppRoutes.onboardingScreen),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.primaryContainer.withOpacity(1),
      body: SizedBox(
        height: SizeUtils.height,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgGroup2,
              height: 518.v,
              width: 428.h,
              alignment: Alignment.topCenter,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(
                  right: 112.h,
                  bottom: 416.v,
                ),
                child: Text(
                  "MED PLUS",
                  style: CustomTextStyles.headlineSmallPrimary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

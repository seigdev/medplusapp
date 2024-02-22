import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'core/app_export.dart';
import 'core/services/app_preferences.dart';
import 'core/utils/navigator_service.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarBrightness: Brightness.light));
  await AppPreferences().init();
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          theme: theme,
          title: 'medplusapp',
          navigatorKey: NavigatorService.navigatorKey,
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.splashScreen,
          routes: AppRoutes.routes,
        );
      },
    );
  }
}

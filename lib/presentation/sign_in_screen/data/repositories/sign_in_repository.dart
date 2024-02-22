import 'dart:convert';
import 'dart:developer';

import 'package:medplusapp/core/services/app_preferences.dart';

import '../../../../core/app_export.dart';
import '../../../../core/services/api_service.dart';
import '../../../../core/utils/navigator_service.dart';
// import '../../../../core/utils/progress_dialog_utils.dart';

class SignInRepository {
  // user email and password login.
  Future userLogin(String email, String password) async {
    try {
      Map<String, dynamic> data = {
        'email': email,
        'password': password,
        'source': 0,
      };
      final response = await apiService.postData('$baseUrl/auth/login', data);
      Map<String, dynamic> endpointResponse = json.decode(response.body);
      // ProgressDialogUtils.showProgressDialog();
      log(endpointResponse['message'].toString());
      AppPreferences().setBearerToken(endpointResponse['data']['accessToken']);
      NavigatorService.pushNamed(AppRoutes.dashboardScreen);
    } catch (e) {
      log(e.toString());
    }
  }
}

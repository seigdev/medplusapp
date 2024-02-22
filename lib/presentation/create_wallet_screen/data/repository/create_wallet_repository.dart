import 'dart:convert';
import 'dart:developer';

import 'package:medplusapp/core/utils/navigator_service.dart';

import '../../../../core/app_export.dart';
import '../../../../core/services/api_service.dart';
import '../../../../core/services/app_preferences.dart';
import '../../../wallet_screen/data/models/wallet_model.dart';

class CreateWalletRepository {
  Wallet? wallet;
  Future createWallet() async {
    try {
      Map<String, dynamic> data = {};
      final response = await apiService.postData(
          '$baseUrl/transactions/create_wallet', data);
      Map<String, dynamic> endpointResponse = json.decode(response.body);
      wallet = Wallet.fromJson(endpointResponse['data']);
      AppPreferences().setWalletStatus(endpointResponse['status']);
      log(endpointResponse.toString());
      NavigatorService.pushNamed(AppRoutes.walletScreen);
    } catch (e) {
      log(e.toString());
    }
  }
}

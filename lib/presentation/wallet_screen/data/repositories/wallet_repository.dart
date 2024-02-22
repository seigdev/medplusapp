import 'dart:convert';
import 'dart:developer';

import 'package:medplusapp/presentation/wallet_screen/data/models/transaction_model.dart';

import '../../../../core/app_export.dart';
import '../../../../core/services/api_service.dart';
import '../../../../core/services/app_preferences.dart';
import '../models/wallet_model.dart';

class WalletRepository {
  Wallet? wallet;

  Future getWallet() async {
    try {
      final response =
          await apiService.getData('$baseUrl/transactions/get_wallet');
      Map<String, dynamic> endpointResponse = json.decode(response.body);
      wallet = Wallet.fromJson(endpointResponse['data']);
      AppPreferences().setWalletStatus(endpointResponse['status']);
      log(endpointResponse.toString());
    } catch (e) {
      log(e.toString());
    }
  }

  Future<List<Transaction>> getTransactions() async {
    try {
      final response =
          await apiService.getData('$baseUrl/transactions?page=1&limit=8');
      Map<String, dynamic> endpointResponse = json.decode(response.body);
      List<dynamic> data = endpointResponse['data'];
      log(endpointResponse.toString());
      return data.map((e) => Transaction.fromJson(e)).toList();
    } catch (e) {
      log(e.toString());
      return <Transaction>[].toList();
    }
  }
}

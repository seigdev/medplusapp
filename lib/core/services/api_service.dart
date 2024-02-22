// ignore_for_file: use_build_context_synchronously

import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart';
import 'package:medplusapp/core/services/app_preferences.dart';

import '../exceptions/api_exception.dart';

ApiService apiService = ApiService();

class ApiService {
  Future<Response> postData(String endpoint, Map<String, dynamic> data) async {
    String bearerToken = AppPreferences().getBearerToken() ?? '';
    final response = await post(Uri.parse(endpoint),
        headers: {
          'Authorization': 'Bearer $bearerToken',
          'Content-Type': 'application/json',
        },
        body: jsonEncode(data));
    try {
      if (response.statusCode == 201 || response.statusCode == 200) {
        return response;
      } else {
        throw ApiException(
          statusCode: response.statusCode,
          message: 'Error Posting Data',
          responseBody: '',
        );
      }
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  Future<Response> getData(String endpoint) async {
    String bearerToken = AppPreferences().getBearerToken() ?? '';
    final response = await get(
      Uri.parse(endpoint),
      headers: {
        'Authorization': 'Bearer $bearerToken',
        'Content-Type': 'application/json',
      },
    );
    try {
      if (response.statusCode == 200) {
        return response;
      } else {
        Map<String, dynamic> endpointResponse = json.decode(response.body);
        throw ApiException(
          statusCode: response.statusCode,
          responseBody: response.body,
          message: endpointResponse['message'],
        );
      }
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  // Other HTTP methods...
}

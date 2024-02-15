// ignore_for_file: use_build_context_synchronously

import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../../../../core/app_export.dart';
import '../../../../core/services/api_service.dart';

class BookAppointmentRepository {
  Future bookAppointment(
      BuildContext context,
      String specialty,
      String user,
      String doctor,
      DateTime schedule_date,
      bool schedule_now,
      int consultation_fee,
      String note,
      String transaction) async {
    try {
      Map<String, dynamic> data = {
        "specialty": specialty,
        "user": user,
        "doctor": doctor,
        "schedule_date": schedule_date.toIso8601String(),
        "schedule_now": schedule_now,
        "consultation_fee": consultation_fee,
        "note": note,
        "transaction": transaction,
      };
      final response =
          await apiService.postData('$baseUrl/appointments/create', data);
      Map<String, dynamic> endpointResponse = json.decode(response.body);
      log(endpointResponse.toString());
    } catch (e) {
      log(e.toString());
    }
  }

  // get specialty dropdown
  Future<List<String>> getSpecialtyList() async {
    try {
      Response response =
          await apiService.getData('$baseUrl/specialty/dropdown-specialty');
      Map<String, dynamic> endPointResponse = json.decode(response.body);
      log(endPointResponse.toString());
      List<dynamic> data = endPointResponse['data'];
      List<String> specialtiesList = getValueByKey(data, 'description');
      log(specialtiesList.toString());
      return specialtiesList;
    } catch (e) {
      rethrow;
    }
  }
}

// Function to get map value using a key.
List<String> getValueByKey(List<dynamic> list, String key) {
  List<String> values = [];
  for (var myMap in list) {
    if (myMap.containsKey(key)) {
      values.add(myMap[key]);
    }
  }
  return values;
}

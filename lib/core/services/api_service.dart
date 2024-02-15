// ignore_for_file: use_build_context_synchronously

import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart';
import 'package:medplusapp/core/services/app_preferences.dart';

import '../exceptions/api_exception.dart';

ApiService apiService = ApiService();

class ApiService {
  Future<Response> postData(String endpoint, Map<String, dynamic> data) async {
    String? bearerToken = AppPreferences().getBearerToken();
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

  Future<Response> getData(String endpoint) async {
    String? bearerToken = AppPreferences().getBearerToken();
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
  // Future<List<VisitorModel>> getVisitor() async {
  //   var userId = UserPreferences.getUserId();
  //   final response = await get(
  //       Uri.parse(
  //         '$baseUrl/Residents/Visitors_GetAll_lBy_ResidentLinkId?ResidentLinkId=$userId',
  //       ),
  //       headers: getheaders);
  //   Map<String, dynamic> endPointResponse = json.decode(response.body);
  //   networkConnectivity.initialiseForApi();
  //   if (response.statusCode == 200 && endPointResponse['data'] != null) {
  //     Map<String, dynamic> endPointResponse = json.decode(response.body);
  //     List<dynamic> data = endPointResponse['data'];
  //     print(response.body);
  //     return data.map((e) => VisitorModel.fromJson(e)).toList();
  //   } else {
  //     print(Exception(response.reasonPhrase).toString());
  //     print(response.body);
  //     return <VisitorModel>[].toList();
  //   }
  // }

  // get visitors
  // final getVisitorProvider =
  //     FutureProvider((ref) => ref.watch(dataProvider).getVisitor());

//  return data.when(
//       data: (data) {
//         var results = data;
//         if (results.isEmpty) {
//           return isEmptyVisitors;
//         }

//         return Expanded(
//           child: Column(
//             children: [
//               const SizedBox(height: 10),
//               Expanded(
//                 child: ListView.builder(
//                   itemCount: results.length > 20 ? 20 : results.length,
//                   itemBuilder: (_, i) {
//                     final visitor = results[i];
//                     return InkWell(
//                       onTap: () => pushTo(
//                         context,
//                         VisitorDetails(
//                           results: results[i],
//                         ),
//                       ),
//                       child: buildVisitorItem(
//                         fullname: visitor.fullName,
//                         date: visitor.visitorStatus?.toLowerCase(),
//                         time:
//                             dateFormat.format(visitor.dateCreated!).toString(),
//                         visitorType: visitor.visitorType,
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//       error: (error, stackTrace) =>
//           displayErrorMotionToast(context, "An error occured."),
//       loading: () => loadingWidget(primaryColor),
//     );
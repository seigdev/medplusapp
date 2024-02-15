// core/exceptions/exception_handler.dart
import 'dart:developer';

import 'api_exception.dart';
import 'app_exception.dart';
// import '../utils/app_logger.dart';

class ExceptionHandler {
  static void handleException(dynamic exception, [StackTrace? stackTrace]) {
    if (exception is AppException) {
      // Handle specific app-related exceptions
      log('AppException handled: ${exception.message}');
      if (exception is NetworkException) {
        log('Network Error Code: ${exception.errorCode}');
      }
    } else {
      // Handle other unexpected exceptions
      log('Unexpected exception: $exception');
    }

    // Log the exception for further investigation
    // AppLogger.logError(exception, stackTrace);
  }

  static void handleApiException(ApiException exception,
      [StackTrace? stackTrace]) {
    // Handle API-specific exceptions based on status codes
    switch (exception.statusCode) {
      case 400:
        // Handle Bad Request
        log('Bad Request: ${exception.message}');
        break;
      case 401:
        // Handle Unauthorized
        log('Unauthorized: ${exception.message}');
        break;
      case 403:
        // Handle Forbidden
        log('Forbidden: ${exception.message}');
        break;
      case 404:
        // Handle Not Found
        log('Not Found: ${exception.message}');
        break;
      // Add more cases for other status codes as needed...
      default:
        // Handle other status codes
        log('API Error - Status Code: ${exception.statusCode}, Message: ${exception.message}');
    }

    // Log the exception for further investigation
    // AppLogger.logError(exception, stackTrace);
  }
}

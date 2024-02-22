import 'app_exception.dart';

class ApiException extends AppException {
  final int statusCode;
  final String responseBody;

  ApiException({
    required this.statusCode,
    required this.responseBody,
    required String message,
  }) : super(message);

  @override
  String toString() =>
      'ApiException - Status Code: $statusCode, Message: $message, Body: $responseBody';
}

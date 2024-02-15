class AppException implements Exception {
  final String message;

  AppException(this.message);

  @override
  String toString() => 'AppException: $message';
}

class NetworkException extends AppException {
  final String errorCode;

  NetworkException(String message, {required this.errorCode}) : super(message);

  @override
  String toString() => 'NetworkException: $message, ErrorCode: $errorCode';
}

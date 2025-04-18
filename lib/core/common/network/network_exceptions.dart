class NetworkException implements Exception {
  final String message;
  final NetworkErrorType type;
  final int? statusCode;
  final dynamic originalException;

  NetworkException({
    required this.message,
    required this.type,
    this.statusCode,
    this.originalException,
  });

  @override
  String toString() {
    return '[${type.name}] $message';
  }

  /// Factory method untuk parsing error dari Dio / http / custom
  static NetworkException fromStatusCode(int? statusCode, [String? error]) {
    switch (statusCode) {
      case 400:
        return NetworkException(
          message: error ?? 'Bad Request',
          type: NetworkErrorType.badRequest,
          statusCode: 400,
        );
      case 401:
        return NetworkException(
          message: error ?? 'Unauthorized',
          type: NetworkErrorType.unauthorized,
          statusCode: 401,
        );
      case 403:
        return NetworkException(
          message: error ?? 'Forbidden',
          type: NetworkErrorType.forbidden,
          statusCode: 403,
        );
      case 404:
        return NetworkException(
          message: error ?? 'Not Found',
          type: NetworkErrorType.notFound,
          statusCode: 404,
        );
      case 500:
      case 502:
      case 503:
      case 504:
        return NetworkException(
          message: error ?? 'Server Error',
          type: NetworkErrorType.serverError,
          statusCode: statusCode,
        );
      default:
        return NetworkException(
          message: error ?? 'Unknown HTTP error',
          type: NetworkErrorType.unknown,
          statusCode: statusCode,
        );
    }
  }

  static NetworkException timeout() {
    return NetworkException(
      message: 'Request timeout',
      type: NetworkErrorType.timeout,
    );
  }

  static NetworkException noInternet() {
    return NetworkException(
      message: 'No internet connection',
      type: NetworkErrorType.noInternet,
    );
  }

  static NetworkException formatError() {
    return NetworkException(
      message: 'Unexpected response format',
      type: NetworkErrorType.formatError,
    );
  }

  static NetworkException unknown([dynamic error]) {
    return NetworkException(
      message: 'Unknown error occurred',
      type: NetworkErrorType.unknown,
      originalException: error,
    );
  }
}

enum NetworkErrorType {
  badRequest,
  unauthorized,
  forbidden,
  notFound,
  serverError,
  timeout,
  noInternet,
  formatError,
  unknown,
}

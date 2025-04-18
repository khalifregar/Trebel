import 'package:logger/logger.dart';

class AppLogger {
  static final _logger = Logger();

  static void logResponse(dynamic response) {
    _logger.i('📥 Response: $response');
  }

  static void logSuccess(String message, [dynamic data]) {
    _logger.i('✅ SUCCESS: $message');
    if (data != null) _logger.i('📦 Data: $data');
  }

  static void logError(String message, [dynamic error]) {
    _logger.e('❌ ERROR: $message');
    if (error != null) _logger.e(error.toString());
  }
}

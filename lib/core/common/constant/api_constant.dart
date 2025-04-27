import 'dart:io';

class ApiConstants {
  static String get baseUrl {
    if (Platform.isAndroid) {
      return 'http://10.0.2.2:8000/api'; // untuk emulator Android
    } else {
      return 'http://localhost:8000/api'; // untuk Flutter Web, MacOS Desktop
    }
  }

  static const Duration timeout = Duration(seconds: 20);
}

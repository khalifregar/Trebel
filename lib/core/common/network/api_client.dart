import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trebel/core/common/constant/api_constant.dart';
import 'interceptor/interceptors.dart';

class ApiClient {
  static Future<Dio> createDio() async {
    final prefs = await SharedPreferences.getInstance();

    final dio = Dio(
      BaseOptions(
        baseUrl: ApiConstants.baseUrl,
        connectTimeout: ApiConstants.timeout,
        receiveTimeout: ApiConstants.timeout,
        headers: {
          'Accept': 'application/json',
        },
      ),
    );

    dio.interceptors.addAll([
      AppInterceptors(
        getToken: () async => prefs.getString('access_token'),
      ),
    ]);

    return dio;
  }
}

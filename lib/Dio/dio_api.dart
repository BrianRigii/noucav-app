import 'package:dio/dio.dart';
import 'package:noucav/Auth/domain/auth_service.dart';

abstract class DioApi {
  late Dio dio;

  DioApi(String apiUrl) {
    dio = Dio();

    dio.options.baseUrl = apiUrl;

    dio.options.headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    };

    dio.interceptors.add(LogInterceptor(
      responseBody: true,
      requestBody: true,
      error: true,
    ));

    void onResponseInterceptor(
        Response response, ResponseInterceptorHandler handler) {
      if (response.statusCode == 401) {
        authService.logout();
      }
      handler.next(response);
    }

    void onRequestInterceptor(
        RequestOptions options, RequestInterceptorHandler handler) {
      if (authService.isAuthenticated) {
        dio.options.headers['Authorization'] = 'Bearer ';
      }
    }

    void onErrorInterceptor(DioError error, ErrorInterceptorHandler handler) {
      //checkNetworkConnection();

      if (error.response?.statusCode == 401) {
        authService.logout();
      }
      handler.next(error);
    }

    dio.interceptors.add(InterceptorsWrapper(
        onResponse: onResponseInterceptor,
        onRequest: onRequestInterceptor,
        onError: onErrorInterceptor));
  }
}

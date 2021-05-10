import 'package:dio/dio.dart';
import 'package:estudo_app/src/domain/utils/app_http_client/app_http_client_interface.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: IAppHttpClient)
class AppHttpClient implements IAppHttpClient {
  final Dio _dio = Dio(
    BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com'),
  );

  AppHttpClient();

  @override
  Future delete(String url, {Map<String, dynamic>? queryParameters, Map<String, String>? headers}) {
    return _dio.delete(
      url,
      queryParameters: queryParameters,
      options: Options(
        headers: headers,
      ),
    );
  }

  @override
  Future get(String url, {Map<String, dynamic>? queryParameters, Map<String, String>? headers}) {
    return _dio.get(
      url,
      queryParameters: queryParameters,
      options: Options(
        headers: headers,
      ),
    );
  }

  @override
  Future patch(String url, {Map? body, Map<String, dynamic>? queryParameters, Map<String, String>? headers}) {
    return _dio.patch(
      url,
      queryParameters: queryParameters,
      options: Options(
        headers: headers,
      ),
    );
  }

  @override
  Future post(String url, {Map? body, Map<String, dynamic>? queryParameters, Map<String, String>? headers}) {
    return _dio.post(
      url,
      queryParameters: queryParameters,
      options: Options(
        headers: headers,
      ),
    );
  }

  @override
  Future put(String url, {Map? body, Map<String, dynamic>? queryParameters, Map<String, String>? headers}) {
    return _dio.put(
      url,
      queryParameters: queryParameters,
      options: Options(
        headers: headers,
      ),
    );
  }
}

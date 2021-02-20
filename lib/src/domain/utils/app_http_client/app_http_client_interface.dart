abstract class IAppHttpClient {
  Future<dynamic> get(
    String url, {
    Map<String, dynamic> queryParameters,
    Map<String, String> headers,
  });

  Future<dynamic> post(
    String url, {
    Map body,
    Map<String, dynamic> queryParameters,
    Map<String, String> headers,
  });

  Future<dynamic> put(
    String url, {
    Map body,
    Map<String, dynamic> queryParameters,
    Map<String, String> headers,
  });

  Future<dynamic> patch(
    String url, {
    Map body,
    Map<String, dynamic> queryParameters,
    Map<String, String> headers,
  });

  Future<dynamic> delete(
    String url, {
    Map<String, dynamic> queryParameters,
    Map<String, String> headers,
  });
}

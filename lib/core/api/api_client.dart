import 'package:dio/dio.dart';
import 'api_constants.dart';
import 'api_interceptors.dart';

class ApiClient {
  final Dio dio;

  ApiClient({String? authToken})
      : dio = Dio(BaseOptions(baseUrl: ApiConstants.baseUrl)) {
    // Add interceptors
    dio.interceptors.add(ApiInterceptors(authToken: authToken));
  }

  // GET request
  Future<Response> get(String endpoint, {Map<String, dynamic>? queryParams}) async {
    return await dio.get(endpoint, queryParameters: queryParams);
  }

  // POST request
  Future<Response> post(String endpoint, {Map<String, dynamic>? data}) async {
    return await dio.post(endpoint, data: data);
  }

  // PUT request
  Future<Response> put(String endpoint, {Map<String, dynamic>? data}) async {
    return await dio.put(endpoint, data: data);
  }

  // DELETE request
  Future<Response> delete(String endpoint) async {
    return await dio.delete(endpoint);
  }
}

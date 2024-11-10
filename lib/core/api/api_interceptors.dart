// core/api/api_interceptors.dart

import 'package:dio/dio.dart';

class ApiInterceptors extends InterceptorsWrapper {
  // Optional token parameter to manage authentication
  final String? authToken;

  ApiInterceptors({this.authToken});

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // Attach authorization token if available
    if (authToken != null) {
      options.headers['Authorization'] = 'Bearer $authToken';
    }
    // Logging request details
    print("Request to ${options.uri} with method ${options.method}");
    print("Headers: ${options.headers}");
    if (options.data != null) {
      print("Body: ${options.data}");
    }
    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // Log response details
    print("Response from ${response.requestOptions.uri}");
    print("Status code: ${response.statusCode}");
    print("Response data: ${response.data}");
    return handler.next(response); // Continue with the response
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // Handle errors globally
    print("Error occurred: ${err.message}");
    if (err.response != null) {
      print("Error data: ${err.response?.data}");
    }
    // You can also map error messages here or retry requests if needed
    return handler.next(err); // Continue error handling
  }
}

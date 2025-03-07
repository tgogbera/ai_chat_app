import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiClient {
  late final Dio _dio;

  static final ApiClient _instance = ApiClient._internal();

  factory ApiClient() => _instance;

  final _baseUrl = dotenv.env['API_BASE_URL'];

  ApiClient._internal() {
    if (_baseUrl == null) {
      throw Exception('API_BASE_URL is not set in .env file');
    }

    BaseOptions options = BaseOptions(
      baseUrl: _baseUrl,
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 5),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${dotenv.env['API_KEY']}',
      },
    );

    _dio = Dio(options);

    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
        print('REQUEST[${options.method}] => PATH: ${options.path}');
        handler.next(options); // continue
      },
      onResponse: (Response response, ResponseInterceptorHandler handler) {
        print('RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}');
        handler.next(response); // continue
      },
      onError: (DioException error, ErrorInterceptorHandler handler) {
        print('ERROR[${error.response?.statusCode}] => PATH: ${error.requestOptions.path}');
        handler.next(error); // continue
      },
    ));

    // Log interceptor for debugging
    _dio.interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true,
    ));
  }

  /// Performs a GET request.
  Future<Response> get(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await _dio.get(path, queryParameters: queryParameters);
      return response;
    } on DioException catch (e) {
      // Customize your error handling here if needed.
      throw Exception('GET request failed: ${e.message}');
    }
  }

  /// Performs a POST request.
  Future<Response> post(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await _dio.post(path, data: data, queryParameters: queryParameters);
      return response;
    } on DioException catch (e) {
      throw Exception('POST request failed: ${e.message}');
    }
  }

  /// Performs a PUT request.
  Future<Response> put(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await _dio.put(path, data: data, queryParameters: queryParameters);
      return response;
    } on DioException catch (e) {
      throw Exception('PUT request failed: ${e.message}');
    }
  }

  /// Performs a DELETE request.
  Future<Response> delete(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await _dio.delete(path, data: data, queryParameters: queryParameters);
      return response;
    } on DioException catch (e) {
      throw Exception('DELETE request failed: ${e.message}');
    }
  }
}

import 'package:dio/dio.dart';

import '../utils/print_util.dart';
import 'dio_services.dart';

class BaseRepoServices {
  static final instance = BaseRepoServices();
  Future<Map<String, dynamic>> postData({
    required String url,
    dynamic data,
    Map<String, dynamic>? queryParameters,
    String? token,
    bool isFileUpload = false,
    bool isOtpRequest = false,
  }) async {
    final dio = ds.dio;
    Map<String, dynamic> headers = {};

    ///if token is available then
    if (token != null) {
      headers['Authorization'] = 'Bearer $token';
    }
    headers.addAll(dio.options.headers);

    ///for file upload change Content-Type
    if (isFileUpload) {
      headers.update('Content-Type', (value) => 'multipart/form-data');
    }
    mPrint('headers: ${headers['Content-Type']}');
    final response = await dio.post(
      url,
      data: data,
      queryParameters: queryParameters,
      options: Options(
        headers: headers,
      ),
    );
    mPrint('response post: ${response.statusCode}');
    mPrint('response post data: ${response.data}');
    if (response.statusCode == 200) {
      final resJson = response.data;
      mPrint('response json: ${resJson['status_code']}');
      if (resJson['status_code'] == 200 || resJson['status_code'] == 201) {
        if (isOtpRequest) {
          return resJson;
        }
        return resJson['data'] ?? {};
      } else {
        throw resJson['message'];
      }
    } else {
      throw response.statusMessage ?? 'Something went wrong!';
    }
  }

  Future<Map<String, dynamic>> getData({
    required String url,
    Map<String, dynamic>? queryParameters,
    String? token,
    bool isLike = false,
  }) async {
    final dio = ds.dio;
    Map<String, dynamic> headers = {};
    if (token != null) {
      headers['Authorization'] = 'Bearer $token';
    }
    headers.addAll(dio.options.headers);
    final response = await dio.get(
      url,
      queryParameters: queryParameters,
      options: Options(
        headers: headers,
      ),
    );
    if (response.statusCode == 200) {
      final resJson = response.data;
      if (resJson['status_code'] == 200) {
        if (isLike) {
          return resJson['data'] != null ? {'data': resJson['data']} : {};
        }
        return resJson['data'] ?? {};
      } else {
        throw resJson['message'];
      }
    } else {
      throw response.statusMessage ?? 'Something went wrong!';
    }
  }

  Future<Map<String, dynamic>> updateData({
    required String url,
    dynamic data,
    Map<String, dynamic>? queryParameters,
    String? token,
  }) async {
    final dio = ds.dio;
    Map<String, dynamic> headers = {};
    if (token != null) {
      headers['Authorization'] = 'Bearer $token';
    }
    headers.addAll(dio.options.headers);
    final response = await dio.put(
      url,
      data: data,
      queryParameters: queryParameters,
      options: Options(
        headers: headers,
      ),
    );
    if (response.statusCode == 200) {
      final resJson = response.data;
      if (resJson['status_code'] == 200) {
        return resJson['data'] ?? {};
      } else {
        throw resJson['message'];
      }
    } else {
      throw response.statusMessage ?? 'Something went wrong!';
    }
  }

  Future<Map<String, dynamic>> deleteData({
    required String url,
    dynamic data,
    Map<String, dynamic>? queryParameters,
    String? token,
  }) async {
    final dio = ds.dio;
    Map<String, dynamic> headers = {};
    if (token != null) {
      headers['Authorization'] = 'Bearer $token';
    }
    headers.addAll(dio.options.headers);
    final response = await dio.delete(
      url,
      data: data,
      queryParameters: queryParameters,
      options: Options(
        headers: headers,
      ),
    );
    if (response.statusCode == 200) {
      final resJson = response.data;
      if (resJson['status_code'] == 200) {
        return resJson['data'] ?? {};
      } else {
        throw resJson['message'];
      }
    } else {
      throw response.statusMessage ?? 'Something went wrong!';
    }
  }
}

BaseRepoServices get brs => BaseRepoServices.instance;

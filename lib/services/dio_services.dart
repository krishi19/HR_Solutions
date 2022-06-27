import 'package:dio/dio.dart';

import '../api/api_url.dart';

class DioServices {
  final Dio _dio = Dio();
  DioServices() {
    _dio.options.baseUrl = ApiUrl.baseUrl;
    _dio.options.followRedirects = false;
    _dio.options.headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };
    /*_dio.options.connectTimeout = 10000; //5s
    _dio.options.receiveTimeout = 10000;*/
  }

  Dio get dio => _dio;
}

DioServices get ds => DioServices();

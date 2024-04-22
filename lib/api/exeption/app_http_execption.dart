import 'package:dio/dio.dart';

class AppHttpException extends DioException {
  AppHttpException({required RequestOptions requestOptions})
      : super(requestOptions: requestOptions);
}

class NetworkErrorException extends DioException {
  NetworkErrorException(
      {required RequestOptions requestOptions, required String message})
      : super(requestOptions: requestOptions);
}

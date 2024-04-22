import 'package:dio/dio.dart';
import 'package:fasttrack/components/common/snack_bar/app_snack_bar.dart';
import 'package:fasttrack/model/response/dio_error_model.dart';
import 'package:flutter/material.dart';

class HandleHttpException {
  HandleHttpException();

  DioErrorModel mapError({required DioException error}) {
    debugPrint("HandleHttpException mapError ===> ${error.response?.data}");
    try {
      final errorModel = DioErrorModel.fromJson(error.response?.data);

      if (errorModel.message is List<dynamic>) {
        final msgList = errorModel.message as List<dynamic>;
        return DioErrorModel(
          code: errorModel.code,
          message: msgList.isNotEmpty ? msgList[0] : '',
          status: errorModel.status,
        );
      } else {
        return errorModel;
      }
    } catch (_) {
      return DioErrorModel(message: dioErrorMsg);
    }
  }
}

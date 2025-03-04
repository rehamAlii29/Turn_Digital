import 'package:flutter/material.dart';
import 'package:flutter_base/src/Core/NetworkStructure/Exceptions/failure.dart';
import 'package:flutter_base/src/Core/NetworkStructure/Networking/src/Interfaces/Handler/error_handler.dart';
import 'package:flutter_base/src/Core/Utils/general_utils.dart';
import '../../../Utils/status_handler.dart';

import 'package:dio/dio.dart';

class DioErrorHandler extends ErrorHandler<DioError> {
  DioErrorHandler._();

  static final DioErrorHandler instance = DioErrorHandler._();

  @override
  void handleError(DioException error) {
    printDM("Error:DioErrorHandler DioException");
    printDM("error:DioErrorHandler DioException ${error.type} ");
    if (error.response.toString().contains("SocketException")) {
      printDM("Error:DioErrorHandler DioException SocketException seen");
      throw NetworkDisconnectException('Network Disconnect Exception');
    } else {
      _handleError(error);
    }
  }

  void _handleError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        throw TimeoutRequestException('Connection Timeout');
      case DioExceptionType.sendTimeout:
        throw TimeoutRequestException('Send Timeout');
      case DioExceptionType.receiveTimeout:
        throw TimeoutRequestException('Receive Timeout');
      case DioExceptionType.badResponse:
        StatusHandler.instance
            .handleStatusCode(error.response?.statusCode ?? 0);
        break;
      case DioExceptionType.cancel:
        throw TimeoutRequestException('Request Cancelled');
      case DioExceptionType.connectionError:
        throw NetworkDisconnectException('Request Cancelled');
      case DioExceptionType.unknown:
        throw UnKnownException('Unknown Error');
      default:
        throw UnKnownException('Unknown Error');
    }
  }
}

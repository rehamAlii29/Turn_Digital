import 'dart:io';

import '../../../Shared/Entities/pagination.dart';
import '../../../Shared/Models/pagination_model.dart';
import '../Constants/exception_constants.dart';
import '../DataSource/service_interface.dart';
import '../Exceptions/failure.dart';
import '../Params/params.dart';
import '../Resources/DataState/data_state.dart';
import '../Resources/Errors/error_model.dart';
import '../../Utils/general_utils.dart';

enum ResponseType {
  withData,
  withoutData,
}

abstract class RepoInterface<T> {
  /// return Your [Service] Class Instance In This Getter
  ServicesInterface get serviceInstance;

  ResponseType get responseType => ResponseType.withData;

  T Function(dynamic data) get onParse;

  bool get hasPagination => false;

  String get keyForPagination => '';

  Future<DataState<T>>? call({Params? params}) async {
    try {
      final httpResponse = await serviceInstance.applyService(params: params);
      final checkResponse = ((httpResponse.statusCode == HttpStatus.ok) ||
              (httpResponse.statusCode == HttpStatus.created) ||
              (httpResponse.statusCode == HttpStatus.accepted)) &&
          (httpResponse.data['success'] ?? false);
      if (checkResponse) {
        if (responseType == ResponseType.withoutData) {
          return DataSuccess<T>(onParse(httpResponse.data),
              message: httpResponse.data['message']);
        }
        if (httpResponse.data['data'] != null) {
          try {
            Pagination? pagination;
            if (hasPagination) {
              try {
                if (httpResponse.data['data']['current_page'] != null) {
                  Map<String, dynamic> data = {
                    'current_page': httpResponse.data['data']['current_page'],
                    'total_items': httpResponse.data['data']['total_items'],
                    'total_pages': httpResponse.data['data']['total_pages'],
                    'page_size': httpResponse.data['data']['page_size'],
                  };

                  pagination = PaginationModel.fromJson(data);
                }
              } catch (e) {
                printDM("Pagination Error => $e");
              }
            }
            T data = onParse(hasPagination
                ? httpResponse.data['data'][keyForPagination]
                : httpResponse.data['data']);
            return DataSuccess<T>(data,
                message: httpResponse.data['message'], pagination: pagination);
          } catch (e) {
            printDM('on Catch error from Repo =>  $e');
            return DataFailed(
              ErrorModel(
                title: httpResponse.data['message'] ?? '',
                type: ErrorType.dirtyData,
              ),
            );
          }
        } else {
          return DataFailed(
            ErrorModel(
              title: httpResponse.data['message'] ?? '',
              type: ErrorType.dataEmpty,
            ),
          );
        }
      }
      return DataFailed(
        ErrorModel(
          title: httpResponse.data['message'] ?? '',
          type: ErrorType.serverSide,
        ),
      );
    } on BadRequestException {
      return DataFailed(
        ErrorModel(
          title: ExceptionConstants.instance.badRequestException,
          type: ErrorType.serverSide,
        ),
      );
    } on ForbiddenException {
      return DataFailed(
        ErrorModel(
          title: ExceptionConstants.instance.forbiddenException,
          type: ErrorType.serverSide,
        ),
      );
    } on NetworkDisconnectException {
      return DataFailed(
        ErrorModel(
          title: ExceptionConstants.instance.networkDisconnectException,
          type: ErrorType.networkConnection,
        ),
      );
    } on UnAuthorizedException {
      return DataFailed(
        ErrorModel(
          title: ExceptionConstants.instance.unAuthorizedException,
          type: ErrorType.serverSide,
        ),
      );
    } on NotFoundException {
      return DataFailed(
        ErrorModel(
          title: ExceptionConstants.instance.notFoundException,
          type: ErrorType.serverSide,
        ),
      );
    } on MethodNotAllowedException {
      return DataFailed(
        ErrorModel(
          title: ExceptionConstants.instance.methodNotAllowedException,
          type: ErrorType.serverSide,
        ),
      );
    } on NotAcceptableException {
      return DataFailed(
        ErrorModel(
          title: ExceptionConstants.instance.notAcceptableException,
          type: ErrorType.serverSide,
        ),
      );
    } on RequestTimeoutException {
      return DataFailed(
        ErrorModel(
          title: ExceptionConstants.instance.requestTimeoutException,
          type: ErrorType.serverSide,
        ),
      );
    } on ConflictException {
      return DataFailed(
        ErrorModel(
          title: ExceptionConstants.instance.conflictException,
          type: ErrorType.serverSide,
        ),
      );
    } on InternalServerException {
      return DataFailed(
        ErrorModel(
          title: ExceptionConstants.instance.internalServerException,
          type: ErrorType.serverSide,
        ),
      );
    } on NotImplementedException {
      return DataFailed(
        ErrorModel(
          title: ExceptionConstants.instance.notImplementedException,
          type: ErrorType.serverSide,
        ),
      );
    } on BadGatewayException {
      return DataFailed(
        ErrorModel(
          title: ExceptionConstants.instance.badGatewayException,
          type: ErrorType.serverSide,
        ),
      );
    } on ServiceUnavailableException {
      return DataFailed(
        ErrorModel(
          title: ExceptionConstants.instance.serviceUnavailableException,
          type: ErrorType.serverSide,
        ),
      );
    } on GatewayTimeoutException {
      return DataFailed(
        ErrorModel(
          title: ExceptionConstants.instance.gatewayTimeoutException,
          type: ErrorType.serverSide,
        ),
      );
    } on UnKnownException {
      return DataFailed(
        ErrorModel(
          title: ExceptionConstants.instance.unKnownException,
          type: ErrorType.unKnown,
        ),
      );
    }
  }
}

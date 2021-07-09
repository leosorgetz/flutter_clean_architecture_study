import 'dart:io';

import 'package:dio/dio.dart';
import 'package:estudo_app/src/domain/error/base_error.dart';
import 'package:estudo_app/src/domain/error/connection_errors.dart';

class BaseRepository {
  final String NOT_FOUND_MESSAGE = 'Rota não encontrada.';

  BaseError handleDioError(DioError e) {
    if (e.response != null) {
      final statusCode = e.response!.statusCode;
      if (statusCode == HttpStatus.notFound) {
        return NotFoundError(NOT_FOUND_MESSAGE);
      }
      if (statusCode == HttpStatus.badRequest) {
        return BadRequestError(e.message);
      }
    }
    return RemoteGenericError(e.message);
  }
}

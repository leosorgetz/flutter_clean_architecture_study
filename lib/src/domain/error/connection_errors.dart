import 'package:estudo_app/src/domain/error/base_error.dart';

class RemoteGenericError extends BaseError {
  @override
  final String message;

  RemoteGenericError(this.message) : super(message);
}

class BadRequestError extends BaseError {
  @override
  final String message;

  BadRequestError(this.message) : super(message);
}

class UnauthorisedError extends BaseError {
  @override
  final String message;

  UnauthorisedError(this.message) : super(message);
}

class NotFoundError extends BaseError {
  @override
  final String message;

  NotFoundError(this.message) : super(message);
}

class TimeoutError extends BaseError {
  @override
  final String message;

  TimeoutError(this.message) : super(message);
}

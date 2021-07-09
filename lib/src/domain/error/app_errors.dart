import 'package:estudo_app/src/domain/error/base_error.dart';

class AppGenericError extends BaseError {
  @override
  final String message;

  AppGenericError(this.message) : super(message);
}

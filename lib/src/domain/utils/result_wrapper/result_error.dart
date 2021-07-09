import 'result.dart';

class ResultError<Error, Success> extends Result<Error, Success> {
  final Error _error;

  ResultError(this._error) : super(_error!);
}

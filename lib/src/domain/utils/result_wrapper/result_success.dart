import 'result.dart';

class ResultSuccess<Error, Success> extends Result<Error, Success> {
  final Success _success;

  ResultSuccess(this._success) : super(_success!);
}

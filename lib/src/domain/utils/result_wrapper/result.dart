class Result<Error, Success> {
  Success? _success;
  Error? _error;

  Result(Object object) {
    if (object is Success) {
      _success = object as Success;
    } else {
      _error = object as Error;
    }
  }

  bool get isSuccess => _success != null;

  bool get isError => _success != null;

  Success get extractSuccess => _success!;

  Error get extractError => _error!;
}

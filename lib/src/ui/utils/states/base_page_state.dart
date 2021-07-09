abstract class BasePageState {}

class LoadingPageState implements BasePageState {
  const LoadingPageState();
}

class SuccessPageState<T> implements BasePageState {
  final T data;

  const SuccessPageState(this.data);
}

class ErrorPageState implements BasePageState {
  final String message;

  const ErrorPageState(this.message);
}

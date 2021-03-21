import 'package:injectable/injectable.dart';

@injectable
class RetryHelper {
  Future<void> testRetry({
    int timeToRetry,
    int maximumAttempts,
  }) async {
    var currentAttempts = 0;
    await Future.doWhile(() async {
      await Future.delayed(Duration(seconds: timeToRetry));
      currentAttempts++;
      if (currentAttempts >= maximumAttempts) {
        return false;
      }
      return true;
    });
  }
}

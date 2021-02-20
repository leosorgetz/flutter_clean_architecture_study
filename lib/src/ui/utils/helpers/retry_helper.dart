import 'package:auto_route/auto_route.dart';

class RetryHelper {
  static Future<void> testRetry({
    @required int timeToRetry,
    @required int maximumAttempts,
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

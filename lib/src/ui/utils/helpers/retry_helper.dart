import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

@injectable
class RetryHelper {
  Future<void> testRetry({
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

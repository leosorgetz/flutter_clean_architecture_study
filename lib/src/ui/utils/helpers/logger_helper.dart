import 'dart:developer';

import 'package:injectable/injectable.dart';

@injectable
class LoggerHelper {
  void show(String text, {String? title}) {
    if (title != null) {
      log('[$title] $text');
      return;
    }
    log('[APP_LOG] $text');
  }
}

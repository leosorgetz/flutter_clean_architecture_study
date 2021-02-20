import 'dart:developer';

import 'package:injectable/injectable.dart';

@injectable
class LoggerHelper {
  void show(String text) {
    log('[LOGGER HELPER] $text');
  }
}

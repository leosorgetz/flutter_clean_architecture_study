import 'package:estudo_app/config/di/di.dart';
import 'package:estudo_app/config/router/base_router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@singleton
class NavigatorHelper {
  final inject = GetIt.I;
  final router = getIt<AppRouter>();

  BuildContext get context => router.navigatorKey.currentContext!;
}

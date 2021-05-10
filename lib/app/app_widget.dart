import 'package:estudo_app/app/app_controller.dart';
import 'package:estudo_app/src/ui/utils/constants/app_colors.dart';
import 'package:estudo_app/src/ui/utils/states/base_state.dart';
import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';

class AppWidget extends StatefulWidget {
  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends BaseState<AppWidget, AppController> {
  @override
  Widget build(BuildContext context) {
    return OKToast(
      child: MaterialApp.router(
        routerDelegate: controller.navigatorHelper.router.delegate(),
        routeInformationParser: controller.navigatorHelper.router.defaultRouteParser(),
        theme: ThemeData(
          primaryColor: AppColors.primaryColor,
        ),
      ),
    );
  }
}

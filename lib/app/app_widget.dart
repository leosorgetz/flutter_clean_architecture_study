import 'package:auto_route/auto_route.dart';
import 'package:estudo_app/app/app_controller.dart';
import 'package:estudo_app/config/router/base_router.gr.dart';
import 'package:estudo_app/src/ui/utils/helpers/navigator_helper.dart';
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
      child: MaterialApp(
        builder: ExtendedNavigator.builder(
          router: BaseRouter(),
          name: NavigatorHelper.baseRouterName,
          builder: (context, extendedNav) => Theme(
            data: ThemeData(brightness: Brightness.light),
            child: extendedNav,
          ),
        ),
      ),
    );
  }
}

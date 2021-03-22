/*import 'package:auto_route/auto_route.dart';
import 'package:estudo_app/app/app_controller.dart';
import 'package:estudo_app/config/router/base_router.gr.dart';
import 'package:estudo_app/src/ui/utils/constants/app_colors.dart';
import 'package:estudo_app/src/ui/utils/helpers/navigator_helper.dart';
import 'package:estudo_app/src/ui/utils/states/base_state.dart';
import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';

class AppWidget extends StatefulWidget {
  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends BaseState<AppWidget, AppController> {
  GlobalKey navigatorKey = GlobalKey<NavigatorState>();
  GlobalKey key = LabeledGlobalKey<State<StatefulWidget>>('key');
  // GlobalKey key = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return OKToast(
      child: MaterialApp(
        key: key,
        builder: ExtendedNavigator.builder(
          navigatorKey: key,
          router: BaseRouter(),
          name: NavigatorHelper.baseRouterName,
          builder: (context, extendedNav) {
            final data = MediaQuery.of(context);
            return MediaQuery(
              data: data.copyWith(
                textScaleFactor: 1,
              ),
              child: Theme(
                data: ThemeData(
                  primaryColor: AppColors.primaryColor,
                ),
                child: extendedNav,
              ),
            );
          },
        ),
      ),
    );
  }
}*/
import 'package:estudo_app/config/router/base_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';
// import '../config/router/base_router.gr.dart';

class AppWidget extends StatelessWidget {
  // final _baseRouter = BaseRouter();
  /*Widget build(BuildContext context) {
    return OKToast(
      child: MaterialApp(
        builder: ExtendedNavigator.builder(
          router: BaseRouter(),
          name: NavigatorHelper.baseRouterName,
          builder: (context, extendedNav) {
            final data = MediaQuery.of(context);
            return MediaQuery(
              data: data.copyWith(
                textScaleFactor: 1,
              ),
              child: Theme(
                data: ThemeData(
                  primaryColor: AppColors.primaryColor,
                ),
                child: extendedNav,
              ),
            );
          },
        ),
      ),
    );
  }*/

  /*@override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }*/

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return OKToast(
      child: MaterialApp.router(
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}

import 'package:estudo_app/config/router/base_router.gr.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class RegisterModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
  final AppRouter appRouter = AppRouter();
}

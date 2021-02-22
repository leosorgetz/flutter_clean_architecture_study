// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i24;

import '../../app/app_controller.dart' as _i3;
import '../../src/domain/data_sources/fingerprint_is_active/get_fingerprint_is_active_use_case.dart'
    as _i7;
import '../../src/domain/data_sources/fingerprint_is_active/get_fingerprint_is_active_repository_interface.dart'
    as _i6;
import '../../src/domain/data_sources/get_posts/get_posts_datasource.dart'
    as _i14;
import '../../src/domain/data_sources/get_posts/get_posts_datasource_interface.dart'
    as _i13;
import '../../src/domain/repositories/fingerprint_is_active/get_fingerprint_is_active_use_case.dart'
    as _i10;
import '../../src/domain/repositories/fingerprint_is_active/get_fingerprint_is_active_repository_interface.dart'
    as _i9;
import '../../src/domain/repositories/get_posts/get_posts_repository.dart'
    as _i17;
import '../../src/domain/repositories/get_posts/get_posts_repository_interface.dart'
    as _i16;
import '../../src/domain/use_cases/fingerprint_is_active/get_fingerprint_is_active_use_case.dart'
    as _i12;
import '../../src/domain/use_cases/fingerprint_is_active/get_fingerprint_is_active_use_case_interface.dart'
    as _i11;
import '../../src/domain/use_cases/get_posts/get_posts_use_case.dart' as _i19;
import '../../src/domain/use_cases/get_posts/get_posts_use_case_interface.dart'
    as _i18;
import '../../src/domain/utils/app_http_client/app_http_client.dart' as _i29;
import '../../src/domain/utils/app_http_client/app_http_client_interface.dart'
    as _i15;
import '../../src/domain/utils/app_storage_client/app_storage_client.dart'
    as _i30;
import '../../src/domain/utils/app_storage_client/app_storage_client_interface.dart'
    as _i8;
import '../../src/ui/pages/example/example_controller.dart' as _i5;
import '../../src/ui/pages/post/post_controller.dart' as _i27;
import '../../src/ui/pages/posts/posts_controller.dart' as _i22;
import '../../src/ui/pages/posts/widgets/drawer_posts_controller.dart' as _i26;
import '../../src/ui/pages/splash/splash_controller.dart' as _i28;
import '../../src/ui/utils/helpers/date_time_helper.dart' as _i4;
import '../../src/ui/utils/helpers/logger_helper.dart' as _i20;
import '../../src/ui/utils/helpers/navigator_helper.dart' as _i21;
import '../../src/ui/utils/helpers/retry_helper.dart' as _i23;
import '../../src/ui/utils/helpers/toast_helper.dart' as _i25;
import 'register_module.dart' as _i31; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.AppController>(() => _i3.AppController());
  gh.factory<_i4.DateTimeHelper>(() => _i4.DateTimeHelper());
  gh.factory<_i5.ExampleController>(() => _i5.ExampleController());
  gh.factory<_i6.IFingerprintIsActiveDataSource>(
      () => _i7.FingerprintIsActiveDataSource(get<_i8.IAppStorageClient>()));
  gh.factory<_i9.IFingerprintIsActiveRepository>(() =>
      _i10.FingerprintIsActiveRepository(
          get<_i6.IFingerprintIsActiveDataSource>()));
  gh.factory<_i11.IFingerprintIsActiveUseCase>(() =>
      _i12.FingerprintIsActiveUseCase(
          get<_i9.IFingerprintIsActiveRepository>()));
  gh.factory<_i13.IGetPostsDataSource>(
      () => _i14.GetPostsDataSource(get<_i15.IAppHttpClient>()));
  gh.factory<_i16.IGetPostsRepository>(
      () => _i17.GetPostsRepository(get<_i13.IGetPostsDataSource>()));
  gh.factory<_i18.IGetPostsUseCase>(
      () => _i19.GetPostsUseCase(get<_i16.IGetPostsRepository>()));
  gh.factory<_i20.LoggerHelper>(() => _i20.LoggerHelper());
  gh.factory<_i21.NavigatorHelper>(() => _i21.NavigatorHelper());
  gh.factory<_i22.PostsController>(
      () => _i22.PostsController(get<_i18.IGetPostsUseCase>()));
  gh.factory<_i23.RetryHelper>(() => _i23.RetryHelper());
  await gh.factoryAsync<_i24.SharedPreferences>(() => registerModule.prefs,
      preResolve: true);
  gh.factory<_i25.ToastHelper>(() => _i25.ToastHelper());
  gh.factory<_i26.DrawerPostsController>(
      () => _i26.DrawerPostsController(get<_i24.SharedPreferences>()));
  gh.factory<_i27.PostController>(() => _i27.PostController(
      get<_i4.DateTimeHelper>(),
      get<_i23.RetryHelper>(),
      get<_i25.ToastHelper>()));
  gh.factory<_i28.SplashController>(() => _i28.SplashController(
      get<_i24.SharedPreferences>(),
      get<_i25.ToastHelper>(),
      get<_i11.IFingerprintIsActiveUseCase>()));
  gh.singleton<_i15.IAppHttpClient>(_i29.AppHttpClient());
  gh.singleton<_i8.IAppStorageClient>(_i30.AppStorageClient());
  return get;
}

class _$RegisterModule extends _i31.RegisterModule {}

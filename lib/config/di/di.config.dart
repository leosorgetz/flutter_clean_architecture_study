// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i18;

import '../../app/app_controller.dart' as _i3;
import '../../src/domain/data_sources/get_fingerprint_is_active/get_fingerprint_is_active_data_source.dart'
    as _i21;
import '../../src/domain/data_sources/get_fingerprint_is_active/get_fingerprint_is_active_data_source_interface.dart'
    as _i20;
import '../../src/domain/data_sources/get_posts/get_posts_datasource.dart'
    as _i8;
import '../../src/domain/data_sources/get_posts/get_posts_datasource_interface.dart'
    as _i7;
import '../../src/domain/data_sources/set_fingerprint_is_active/set_fingerprint_is_active_data_source.dart'
    as _i28;
import '../../src/domain/data_sources/set_fingerprint_is_active/set_fingerprint_is_active_data_source_interface.dart'
    as _i27;
import '../../src/domain/repositories/get_fingerprint_is_active/get_fingerprint_is_active_repository.dart'
    as _i24;
import '../../src/domain/repositories/get_fingerprint_is_active/get_fingerprint_is_active_repository_interface.dart'
    as _i23;
import '../../src/domain/repositories/get_posts/get_posts_repository.dart'
    as _i11;
import '../../src/domain/repositories/get_posts/get_posts_repository_interface.dart'
    as _i10;
import '../../src/domain/repositories/set_fingerprint_is_active/set_fingerprint_is_active_repository.dart'
    as _i30;
import '../../src/domain/repositories/set_fingerprint_is_active/set_fingerprint_is_active_repository_interface.dart'
    as _i29;
import '../../src/domain/use_cases/get_fingerprint_is_active/get_fingerprint_is_active_use_case.dart'
    as _i26;
import '../../src/domain/use_cases/get_fingerprint_is_active/get_fingerprint_is_active_use_case_interface.dart'
    as _i25;
import '../../src/domain/use_cases/get_posts/get_posts_use_case.dart' as _i13;
import '../../src/domain/use_cases/get_posts/get_posts_use_case_interface.dart'
    as _i12;
import '../../src/domain/use_cases/set_fingerprint_is_active/set_fingerprint_is_active_use_case.dart'
    as _i32;
import '../../src/domain/use_cases/set_fingerprint_is_active/set_fingerprint_is_active_use_case_interface.dart'
    as _i31;
import '../../src/domain/utils/app_http_client/app_http_client.dart' as _i36;
import '../../src/domain/utils/app_http_client/app_http_client_interface.dart'
    as _i9;
import '../../src/domain/utils/app_storage_client/app_storage_client.dart'
    as _i37;
import '../../src/domain/utils/app_storage_client/app_storage_client_interface.dart'
    as _i22;
import '../../src/ui/pages/example/example_controller.dart' as _i6;
import '../../src/ui/pages/example_animation/example_animation_controller.dart'
    as _i5;
import '../../src/ui/pages/post/post_controller.dart' as _i33;
import '../../src/ui/pages/posts/posts_controller.dart' as _i16;
import '../../src/ui/pages/posts/widgets/drawer_posts_controller.dart' as _i35;
import '../../src/ui/pages/splash/splash_controller.dart' as _i34;
import '../../src/ui/utils/helpers/date_time_helper.dart' as _i4;
import '../../src/ui/utils/helpers/logger_helper.dart' as _i14;
import '../../src/ui/utils/helpers/navigator_helper.dart' as _i15;
import '../../src/ui/utils/helpers/retry_helper.dart' as _i17;
import '../../src/ui/utils/helpers/toast_helper.dart' as _i19;
import 'register_module.dart' as _i38; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.AppController>(() => _i3.AppController());
  gh.factory<_i4.DateTimeHelper>(() => _i4.DateTimeHelper());
  gh.factory<_i5.ExampleAnimationController>(
      () => _i5.ExampleAnimationController());
  gh.factory<_i6.ExampleController>(() => _i6.ExampleController());
  gh.factory<_i7.IGetPostsDataSource>(
      () => _i8.GetPostsDataSource(get<_i9.IAppHttpClient>()));
  gh.factory<_i10.IGetPostsRepository>(
      () => _i11.GetPostsRepository(get<_i7.IGetPostsDataSource>()));
  gh.factory<_i12.IGetPostsUseCase>(
      () => _i13.GetPostsUseCase(get<_i10.IGetPostsRepository>()));
  gh.factory<_i14.LoggerHelper>(() => _i14.LoggerHelper());
  gh.factory<_i15.NavigatorHelper>(() => _i15.NavigatorHelper());
  gh.factory<_i16.PostsController>(
      () => _i16.PostsController(get<_i12.IGetPostsUseCase>()));
  gh.factory<_i17.RetryHelper>(() => _i17.RetryHelper());
  await gh.factoryAsync<_i18.SharedPreferences>(() => registerModule.prefs,
      preResolve: true);
  gh.factory<_i19.ToastHelper>(() => _i19.ToastHelper());
  gh.factory<_i20.IGetFingerprintIsActiveDataSource>(() =>
      _i21.GetFingerprintIsActiveDataSource(get<_i22.IAppStorageClient>()));
  gh.factory<_i23.IGetFingerprintIsActiveRepository>(() =>
      _i24.GetFingerprintIsActiveRepository(
          get<_i20.IGetFingerprintIsActiveDataSource>()));
  gh.factory<_i25.IGetFingerprintIsActiveUseCase>(() =>
      _i26.GetFingerprintIsActiveUseCase(
          get<_i23.IGetFingerprintIsActiveRepository>()));
  gh.factory<_i27.ISetFingerprintIsActiveDataSource>(() =>
      _i28.SetFingerprintIsActiveDataSource(get<_i22.IAppStorageClient>()));
  gh.factory<_i29.ISetFingerprintIsActiveRepository>(() =>
      _i30.SetFingerprintIsActiveRepository(
          get<_i27.ISetFingerprintIsActiveDataSource>()));
  gh.factory<_i31.ISetFingerprintIsActiveUseCase>(() =>
      _i32.SetFingerprintIsActiveUseCase(
          get<_i29.ISetFingerprintIsActiveRepository>()));
  gh.factory<_i33.PostController>(() => _i33.PostController(
      get<_i4.DateTimeHelper>(),
      get<_i17.RetryHelper>(),
      get<_i19.ToastHelper>()));
  gh.factory<_i34.SplashController>(() => _i34.SplashController(
      get<_i19.ToastHelper>(), get<_i25.IGetFingerprintIsActiveUseCase>()));
  gh.factory<_i35.DrawerPostsController>(() => _i35.DrawerPostsController(
      get<_i25.IGetFingerprintIsActiveUseCase>(),
      get<_i27.ISetFingerprintIsActiveDataSource>()));
  gh.singleton<_i9.IAppHttpClient>(_i36.AppHttpClient());
  gh.singleton<_i22.IAppStorageClient>(
      _i37.AppStorageClient(get<_i18.SharedPreferences>()));
  return get;
}

class _$RegisterModule extends _i38.RegisterModule {}

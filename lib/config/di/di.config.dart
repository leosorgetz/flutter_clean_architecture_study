// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i17;

import '../../app/app_controller.dart' as _i3;
import '../../src/domain/data_sources/get_fingerprint_is_active/get_fingerprint_is_active_data_source.dart'
    as _i20;
import '../../src/domain/data_sources/get_fingerprint_is_active/get_fingerprint_is_active_data_source_interface.dart'
    as _i19;
import '../../src/domain/data_sources/get_posts/get_posts_datasource.dart'
    as _i7;
import '../../src/domain/data_sources/get_posts/get_posts_datasource_interface.dart'
    as _i6;
import '../../src/domain/data_sources/set_fingerprint_is_active/set_fingerprint_is_active_data_source.dart'
    as _i27;
import '../../src/domain/data_sources/set_fingerprint_is_active/set_fingerprint_is_active_data_source_interface.dart'
    as _i26;
import '../../src/domain/repositories/get_fingerprint_is_active/get_fingerprint_is_active_repository.dart'
    as _i23;
import '../../src/domain/repositories/get_fingerprint_is_active/get_fingerprint_is_active_repository_interface.dart'
    as _i22;
import '../../src/domain/repositories/get_posts/get_posts_repository.dart'
    as _i10;
import '../../src/domain/repositories/get_posts/get_posts_repository_interface.dart'
    as _i9;
import '../../src/domain/repositories/set_fingerprint_is_active/set_fingerprint_is_active_repository.dart'
    as _i29;
import '../../src/domain/repositories/set_fingerprint_is_active/set_fingerprint_is_active_repository_interface.dart'
    as _i28;
import '../../src/domain/use_cases/get_fingerprint_is_active/get_fingerprint_is_active_use_case.dart'
    as _i25;
import '../../src/domain/use_cases/get_fingerprint_is_active/get_fingerprint_is_active_use_case_interface.dart'
    as _i24;
import '../../src/domain/use_cases/get_posts/get_posts_use_case.dart' as _i12;
import '../../src/domain/use_cases/get_posts/get_posts_use_case_interface.dart'
    as _i11;
import '../../src/domain/use_cases/set_fingerprint_is_active/set_fingerprint_is_active_use_case.dart'
    as _i31;
import '../../src/domain/use_cases/set_fingerprint_is_active/set_fingerprint_is_active_use_case_interface.dart'
    as _i30;
import '../../src/domain/utils/app_http_client/app_http_client.dart' as _i35;
import '../../src/domain/utils/app_http_client/app_http_client_interface.dart'
    as _i8;
import '../../src/domain/utils/app_storage_client/app_storage_client.dart'
    as _i36;
import '../../src/domain/utils/app_storage_client/app_storage_client_interface.dart'
    as _i21;
import '../../src/ui/pages/example/example_controller.dart' as _i5;
import '../../src/ui/pages/post/post_controller.dart' as _i32;
import '../../src/ui/pages/posts/posts_controller.dart' as _i15;
import '../../src/ui/pages/posts/widgets/drawer_posts_controller.dart' as _i34;
import '../../src/ui/pages/splash/splash_controller.dart' as _i33;
import '../../src/ui/utils/helpers/date_time_helper.dart' as _i4;
import '../../src/ui/utils/helpers/logger_helper.dart' as _i13;
import '../../src/ui/utils/helpers/navigator_helper.dart' as _i14;
import '../../src/ui/utils/helpers/retry_helper.dart' as _i16;
import '../../src/ui/utils/helpers/toast_helper.dart' as _i18;
import 'register_module.dart' as _i37; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.AppController>(() => _i3.AppController());
  gh.factory<_i4.DateTimeHelper>(() => _i4.DateTimeHelper());
  gh.factory<_i5.ExampleController>(() => _i5.ExampleController());
  gh.factory<_i6.IGetPostsDataSource>(
      () => _i7.GetPostsDataSource(get<_i8.IAppHttpClient>()));
  gh.factory<_i9.IGetPostsRepository>(
      () => _i10.GetPostsRepository(get<_i6.IGetPostsDataSource>()));
  gh.factory<_i11.IGetPostsUseCase>(
      () => _i12.GetPostsUseCase(get<_i9.IGetPostsRepository>()));
  gh.factory<_i13.LoggerHelper>(() => _i13.LoggerHelper());
  gh.factory<_i14.NavigatorHelper>(() => _i14.NavigatorHelper());
  gh.factory<_i15.PostsController>(
      () => _i15.PostsController(get<_i11.IGetPostsUseCase>()));
  gh.factory<_i16.RetryHelper>(() => _i16.RetryHelper());
  await gh.factoryAsync<_i17.SharedPreferences>(() => registerModule.prefs,
      preResolve: true);
  gh.factory<_i18.ToastHelper>(() => _i18.ToastHelper());
  gh.factory<_i19.IGetFingerprintIsActiveDataSource>(() =>
      _i20.GetFingerprintIsActiveDataSource(get<_i21.IAppStorageClient>()));
  gh.factory<_i22.IGetFingerprintIsActiveRepository>(() =>
      _i23.GetFingerprintIsActiveRepository(
          get<_i19.IGetFingerprintIsActiveDataSource>()));
  gh.factory<_i24.IGetFingerprintIsActiveUseCase>(() =>
      _i25.GetFingerprintIsActiveUseCase(
          get<_i22.IGetFingerprintIsActiveRepository>()));
  gh.factory<_i26.ISetFingerprintIsActiveDataSource>(() =>
      _i27.SetFingerprintIsActiveDataSource(get<_i21.IAppStorageClient>()));
  gh.factory<_i28.ISetFingerprintIsActiveRepository>(() =>
      _i29.SetFingerprintIsActiveRepository(
          get<_i26.ISetFingerprintIsActiveDataSource>()));
  gh.factory<_i30.ISetFingerprintIsActiveUseCase>(() =>
      _i31.SetFingerprintIsActiveUseCase(
          get<_i28.ISetFingerprintIsActiveRepository>()));
  gh.factory<_i32.PostController>(() => _i32.PostController(
      get<_i4.DateTimeHelper>(),
      get<_i16.RetryHelper>(),
      get<_i18.ToastHelper>()));
  gh.factory<_i33.SplashController>(() => _i33.SplashController(
      get<_i18.ToastHelper>(), get<_i24.IGetFingerprintIsActiveUseCase>()));
  gh.factory<_i34.DrawerPostsController>(() => _i34.DrawerPostsController(
      get<_i24.IGetFingerprintIsActiveUseCase>(),
      get<_i26.ISetFingerprintIsActiveDataSource>()));
  gh.singleton<_i8.IAppHttpClient>(_i35.AppHttpClient());
  gh.singleton<_i21.IAppStorageClient>(
      _i36.AppStorageClient(get<_i17.SharedPreferences>()));
  return get;
}

class _$RegisterModule extends _i37.RegisterModule {}

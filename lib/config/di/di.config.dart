// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../app/app_controller.dart' as _i3;
import '../../src/domain/data_sources/get_posts/get_posts_datasource.dart'
    as _i8;
import '../../src/domain/data_sources/get_posts/get_posts_datasource_interface.dart'
    as _i7;
import '../../src/domain/repositories/get_posts/get_posts_repository.dart'
    as _i11;
import '../../src/domain/repositories/get_posts/get_posts_repository_interface.dart'
    as _i10;
import '../../src/domain/use_cases/get_posts/get_posts_usecase.dart' as _i13;
import '../../src/domain/use_cases/get_posts/get_posts_usecase_interface.dart'
    as _i12;
import '../../src/domain/utils/app_http_client/app_http_client.dart' as _i20;
import '../../src/domain/utils/app_http_client/app_http_client_interface.dart'
    as _i9;
import '../../src/ui/pages/example/example_controller.dart' as _i6;
import '../../src/ui/pages/post/post_controller.dart' as _i19;
import '../../src/ui/pages/posts/posts_controller.dart' as _i16;
import '../../src/ui/pages/posts/widgets/drawer_posts_controller.dart' as _i5;
import '../../src/ui/utils/helpers/date_time_helper.dart' as _i4;
import '../../src/ui/utils/helpers/logger_helper.dart' as _i14;
import '../../src/ui/utils/helpers/navigator_helper.dart' as _i15;
import '../../src/ui/utils/helpers/retry_helper.dart' as _i17;
import '../../src/ui/utils/helpers/toast_helper.dart'
    as _i18; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.AppController>(() => _i3.AppController());
  gh.factory<_i4.DateTimeHelper>(() => _i4.DateTimeHelper());
  gh.factory<_i5.DrawerPostsController>(() => _i5.DrawerPostsController());
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
  gh.factory<_i18.ToastHelper>(() => _i18.ToastHelper());
  gh.factory<_i19.PostController>(() => _i19.PostController(
      get<_i4.DateTimeHelper>(),
      get<_i17.RetryHelper>(),
      get<_i18.ToastHelper>()));
  gh.singleton<_i9.IAppHttpClient>(_i20.AppHttpClient());
  return get;
}

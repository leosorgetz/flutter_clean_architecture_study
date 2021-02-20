// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../../app/app_controller.dart';
import '../../src/domain/utils/app_http_client/app_http_client.dart';
import '../../src/ui/pages/example/example_controller.dart';
import '../../src/ui/pages/first/first_controller.dart';
import '../../src/domain/data_sources/get_posts/get_posts_datasource.dart';
import '../../src/domain/repositories/get_posts/get_posts_repository.dart';
import '../../src/domain/use_cases/get_posts/get_posts_usecase.dart';
import '../../src/domain/utils/app_http_client/app_http_client_interface.dart';
import '../../src/domain/data_sources/get_posts/get_posts_datasource_interface.dart';
import '../../src/domain/repositories/get_posts/get_posts_repository_interface.dart';
import '../../src/domain/use_cases/get_posts/get_posts_usecase_interface.dart';
import '../../src/ui/utils/helpers/navigator_helper.dart';
import '../../src/ui/pages/post/post_controller.dart';
import '../../src/ui/pages/posts/posts_controller.dart';
import '../../src/ui/pages/second/second_controller.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  gh.factory<AppController>(() => AppController());
  gh.factory<ExampleController>(() => ExampleController());
  gh.factory<FirstController>(() => FirstController());
  gh.factory<IGetPostsDataSource>(
      () => GetPostsDataSource(get<IAppHttpClient>()));
  gh.factory<IGetPostsRepository>(
      () => GetPostsRepository(get<IGetPostsDataSource>()));
  gh.factory<IGetPostsUseCase>(
      () => GetPostsUseCase(get<IGetPostsRepository>()));
  gh.factory<NavigatorHelper>(() => NavigatorHelper());
  gh.factory<PostController>(() => PostController());
  gh.factory<PostsController>(() => PostsController(get<IGetPostsUseCase>()));
  gh.factory<SecondController>(() => SecondController());

  // Eager singletons must be registered in the right order
  gh.singleton<IAppHttpClient>(AppHttpClient());
  return get;
}

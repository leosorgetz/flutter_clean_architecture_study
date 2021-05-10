/*import 'package:auto_route/auto_route_annotations.dart';
import 'package:estudo_app/src/ui/pages/example_animation/example_animation_page.dart';
import 'package:estudo_app/src/ui/pages/post/post_page.dart';
import 'package:estudo_app/src/ui/pages/posts/posts_page.dart';
import 'package:estudo_app/src/ui/pages/splash/splash_page.dart';

@MaterialAutoRouter(
  // generateNavigationHelperExtension: true,
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: PostsPage),
    AutoRoute(page: PostPage),
    AutoRoute(page: ExampleAnimationPage),
  ],
)
class $AppRouter {}*/

import 'package:auto_route/auto_route.dart';
import 'package:estudo_app/src/ui/pages/example_animation/example_animation_page.dart';
import 'package:estudo_app/src/ui/pages/post/post_page.dart';
import 'package:estudo_app/src/ui/pages/posts/posts_page.dart';
import 'package:estudo_app/src/ui/pages/splash/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: PostsPage),
    AutoRoute(page: PostPage),
    AutoRoute(page: ExampleAnimationPage),
  ],
)
class $AppRouter {}

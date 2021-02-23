import 'package:auto_route/auto_route_annotations.dart';
import 'package:estudo_app/src/ui/pages/animation/example_animation_page.dart';
import 'package:estudo_app/src/ui/pages/post/post_page.dart';
import 'package:estudo_app/src/ui/pages/posts/posts_page.dart';
import 'package:estudo_app/src/ui/pages/splash/splash_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: PostsPage),
    MaterialRoute(page: PostPage),
    MaterialRoute(page: ExampleAnimationPage),
  ],
)
class $BaseRouter {}

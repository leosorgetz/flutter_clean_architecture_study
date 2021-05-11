import 'package:auto_route/auto_route.dart';
import 'package:estudo_app/src/ui/pages/example_animation/example_animation_page.dart';
import 'package:estudo_app/src/ui/pages/page_one/page_one_page.dart';
import 'package:estudo_app/src/ui/pages/page_three/page_three_page.dart';
import 'package:estudo_app/src/ui/pages/page_two/page_two_page.dart';
import 'package:estudo_app/src/ui/pages/post/post_page.dart';
import 'package:estudo_app/src/ui/pages/posts/posts_page.dart';
import 'package:estudo_app/src/ui/pages/splash/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: PostsPage),
    AutoRoute(page: PostPage),
    AutoRoute(page: ExampleAnimationPage),
    AutoRoute(page: PageOnePage),
    AutoRoute(page: PageTwoPage),
    AutoRoute(page: PageThreePage),
  ],
)
class $AppRouter {}

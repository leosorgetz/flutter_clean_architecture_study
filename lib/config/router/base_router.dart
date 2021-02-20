import 'package:auto_route/auto_route_annotations.dart';
import 'package:estudo_app/src/ui/pages/post/post_page.dart';
import 'package:estudo_app/src/ui/pages/posts/posts_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    MaterialRoute(page: PostsPage, initial: true),
    MaterialRoute(page: PostPage),
  ],
)
class $BaseRouter {}

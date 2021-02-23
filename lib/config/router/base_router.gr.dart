// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../src/domain/models/result/post.dart';
import '../../src/ui/pages/animation/example_animation_page.dart';
import '../../src/ui/pages/post/post_page.dart';
import '../../src/ui/pages/posts/posts_page.dart';
import '../../src/ui/pages/splash/splash_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String postsPage = '/posts-page';
  static const String postPage = '/post-page';
  static const String exampleAnimationPage = '/example-animation-page';
  static const all = <String>{
    splashPage,
    postsPage,
    postPage,
    exampleAnimationPage,
  };
}

class BaseRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.postsPage, page: PostsPage),
    RouteDef(Routes.postPage, page: PostPage),
    RouteDef(Routes.exampleAnimationPage, page: ExampleAnimationPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
    PostsPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => PostsPage(),
        settings: data,
      );
    },
    PostPage: (data) {
      final args = data.getArgs<PostPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => PostPage(post: args.post),
        settings: data,
      );
    },
    ExampleAnimationPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ExampleAnimationPage(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension BaseRouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashPage() => push<dynamic>(Routes.splashPage);

  Future<dynamic> pushPostsPage() => push<dynamic>(Routes.postsPage);

  Future<dynamic> pushPostPage({
    @required Post post,
  }) =>
      push<dynamic>(
        Routes.postPage,
        arguments: PostPageArguments(post: post),
      );

  Future<dynamic> pushExampleAnimationPage() =>
      push<dynamic>(Routes.exampleAnimationPage);
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// PostPage arguments holder class
class PostPageArguments {
  final Post post;
  PostPageArguments({@required this.post});
}

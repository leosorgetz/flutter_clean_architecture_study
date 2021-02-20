// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../src/domain/models/result/post.dart';
import '../../src/ui/pages/post/post_page.dart';
import '../../src/ui/pages/posts/posts_page.dart';

class Routes {
  static const String postsPage = '/';
  static const String postPage = '/post-page';
  static const all = <String>{
    postsPage,
    postPage,
  };
}

class BaseRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.postsPage, page: PostsPage),
    RouteDef(Routes.postPage, page: PostPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
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
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension BaseRouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushPostsPage() => push<dynamic>(Routes.postsPage);

  Future<dynamic> pushPostPage({
    @required Post post,
  }) =>
      push<dynamic>(
        Routes.postPage,
        arguments: PostPageArguments(post: post),
      );
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// PostPage arguments holder class
class PostPageArguments {
  final Post post;
  PostPageArguments({@required this.post});
}

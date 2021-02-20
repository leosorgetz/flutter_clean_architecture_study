// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../src/domain/models/result/post.dart';
import '../../src/ui/pages/first/first_page.dart';
import '../../src/ui/pages/post/post_page.dart';
import '../../src/ui/pages/posts/posts_page.dart';
import '../../src/ui/pages/second/second_page.dart';

class Routes {
  static const String postsPage = '/';
  static const String postPage = '/post-page';
  static const String firstPage = '/first-page';
  static const String secondPage = '/second-page';
  static const all = <String>{
    postsPage,
    postPage,
    firstPage,
    secondPage,
  };
}

class BaseRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.postsPage, page: PostsPage),
    RouteDef(Routes.postPage, page: PostPage),
    RouteDef(Routes.firstPage, page: FirstPage),
    RouteDef(Routes.secondPage, page: SecondPage),
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
    FirstPage: (data) {
      final args = data.getArgs<FirstPageArguments>(
        orElse: () => FirstPageArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => FirstPage(
          key: args.key,
          title: args.title,
        ),
        settings: data,
      );
    },
    SecondPage: (data) {
      final args = data.getArgs<SecondPageArguments>(
        orElse: () => SecondPageArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => SecondPage(
          key: args.key,
          title: args.title,
        ),
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

  Future<dynamic> pushFirstPage({
    Key key,
    String title = 'First',
  }) =>
      push<dynamic>(
        Routes.firstPage,
        arguments: FirstPageArguments(key: key, title: title),
      );

  Future<dynamic> pushSecondPage({
    Key key,
    String title = 'Second',
  }) =>
      push<dynamic>(
        Routes.secondPage,
        arguments: SecondPageArguments(key: key, title: title),
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

/// FirstPage arguments holder class
class FirstPageArguments {
  final Key key;
  final String title;
  FirstPageArguments({this.key, this.title = 'First'});
}

/// SecondPage arguments holder class
class SecondPageArguments {
  final Key key;
  final String title;
  SecondPageArguments({this.key, this.title = 'Second'});
}

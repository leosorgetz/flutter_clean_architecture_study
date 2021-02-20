import 'package:estudo_app/src/ui/pages/posts/posts_controller.dart';
import 'package:estudo_app/src/ui/pages/posts/widgets/drawer_posts_widget.dart';
import 'package:estudo_app/src/ui/utils/states/base_state.dart';
import 'package:estudo_app/src/ui/utils/widgets/app_pull_to_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class PostsPage extends StatefulWidget {
  const PostsPage();

  @override
  _PostsPageState createState() => _PostsPageState();
}

class _PostsPageState extends BaseState<PostsPage, PostsController> {
  @override
  void initState() {
    super.initState();
    controller.getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Posts'),
      ),
      drawer: DrawerPostsWidget(),
      body: Observer(builder: (context) {
        if (controller.postsIsLoading) return buildLoading();
        if (controller.postsHasError) return buildError();
        return buildSuccess();
      }),
    );
  }

  Widget buildLoading() => Container(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );

  Widget buildSuccess() {
    final posts = controller.postsObservable?.value ?? [];
    return PullToRefreshWidget(
      onRefresh: () {
        controller.getPosts();
      },
      child: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (_, index) {
          final post = posts[index];
          return ListTile(
            title: Text(post.title),
            enabled: true,
            onTap: () {
              controller.goToDetails(post);
            },
          );
        },
      ),
    );
  }

  Widget buildError() {
    return PullToRefreshWidget(
      onRefresh: () {
        controller.getPosts();
      },
      child: Container(
        child: Center(
          child: Text(controller.postsObservable.error.toString()),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}

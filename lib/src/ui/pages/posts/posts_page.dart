import 'package:estudo_app/src/domain/entities/post.dart';
import 'package:estudo_app/src/ui/pages/posts/posts_controller.dart';
import 'package:estudo_app/src/ui/pages/posts/widgets/drawer_posts_widget.dart';
import 'package:estudo_app/src/ui/utils/states/base_page_state.dart';
import 'package:estudo_app/src/ui/utils/states/base_state.dart';
import 'package:estudo_app/src/ui/utils/widgets/app_pull_to_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

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
        centerTitle: true,
        title: Text('Posts'),
      ),
      drawer: DrawerPostsWidget(),
      body: Observer(builder: (context) {
        final state = controller.state;
        if (state is SuccessPageState<List<Post>>) {
          return buildSuccess(state.data);
        }
        if (state is ErrorPageState) {
          return buildError(state.message);
        }
        return buildLoading();
      }),
    );
  }

  Widget buildLoading() => Container(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );

  Widget buildSuccess(List<Post> posts) => AnimationLimiter(
        child: PullToRefreshWidget(
          onRefresh: () {
            controller.getPosts();
          },
          child: ListView.builder(
            itemCount: posts.length,
            itemBuilder: (_, index) {
              final post = posts[index];
              return AnimationConfiguration.staggeredList(
                position: index,
                duration: const Duration(milliseconds: 250),
                child: SlideAnimation(
                  verticalOffset: 100,
                  child: FadeInAnimation(
                    child: ListTile(
                      title: Text(post.title!),
                      enabled: true,
                      onTap: () {
                        controller.goToDetails(post);
                      },
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      );

  Widget buildError(String message) {
    return PullToRefreshWidget(
      onRefresh: () {
        controller.getPosts();
      },
      child: Container(
        child: Center(
          child: Text(message),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}

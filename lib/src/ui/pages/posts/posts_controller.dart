import 'package:estudo_app/config/router/base_router.gr.dart';
import 'package:estudo_app/src/domain/entities/post.dart';
import 'package:estudo_app/src/domain/use_cases/get_posts/get_posts_use_case_interface.dart';
import 'package:estudo_app/src/ui/utils/helpers/navigator_helper.dart';
import 'package:estudo_app/src/ui/utils/states/base_page_state.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'posts_controller.g.dart';

@injectable
class PostsController = _PostsControllerBase with _$PostsController;

abstract class _PostsControllerBase with Store {
  final IGetPostsUseCase _getPostsUseCase;
  final NavigatorHelper _navigatorHelper;
  @observable
  BasePageState? state;

  _PostsControllerBase(
    this._getPostsUseCase,
    this._navigatorHelper,
  );

  @action
  Future<void> getPosts() async {
    state = LoadingPageState();
    var result = await _getPostsUseCase();
    if (result.isSuccess) {
      state = SuccessPageState(result.extractSuccess);
    } else {
      state = ErrorPageState(result.extractError.toString());
    }
  }

  Future<void> goToDetails(Post post) async {
    _navigatorHelper.router.push(PostPageRoute(post: post));
  }
}

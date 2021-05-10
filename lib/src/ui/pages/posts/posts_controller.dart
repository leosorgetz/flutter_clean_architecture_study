import 'package:estudo_app/config/router/base_router.gr.dart';
import 'package:estudo_app/src/domain/entities/post.dart';
import 'package:estudo_app/src/domain/use_cases/get_posts/get_posts_use_case_interface.dart';
import 'package:estudo_app/src/ui/utils/helpers/navigator_helper.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'posts_controller.g.dart';

@injectable
class PostsController = _PostsControllerBase with _$PostsController;

abstract class _PostsControllerBase with Store {
  final IGetPostsUseCase _getPostsUseCase;
  final NavigatorHelper _navigatorHelper;

  @observable
  ObservableFuture<List<Post>>? postsObservable;

  @computed
  bool get postsHasError => postsObservable!.error != null;

  @computed
  FutureStatus get postsObserverStatus => postsObservable!.status;

  @computed
  bool get postsIsLoading => postsObserverStatus == FutureStatus.pending && !postsHasError;

  _PostsControllerBase(
    this._getPostsUseCase,
    this._navigatorHelper,
  ) {
    getPosts();
  }

  @action
  Future<void> getPosts() async {
    postsObservable = _getPostsUseCase().asObservable();
  }

  Future<void> goToDetails(Post post) async {
    _navigatorHelper.router.push(PostRoute(post: post));
  }
}

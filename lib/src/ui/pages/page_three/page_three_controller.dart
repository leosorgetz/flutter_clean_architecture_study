import 'package:estudo_app/config/router/base_router.gr.dart';
import 'package:estudo_app/src/domain/entities/post.dart';
import 'package:estudo_app/src/ui/utils/helpers/logger_helper.dart';
import 'package:estudo_app/src/ui/utils/helpers/navigator_helper.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'page_three_controller.g.dart';

@injectable
class PageThreeController = _PageThreeControllerBase with _$PageThreeController;

abstract class _PageThreeControllerBase with Store {
  final NavigatorHelper _navigatorHelper;
  final LoggerHelper loggerHelper;

  _PageThreeControllerBase(this._navigatorHelper, this.loggerHelper);

  void backAll() {
    _navigatorHelper.router.popUntilRoot();
  }

  void backToPageOne() {
    _navigatorHelper.router.popUntilRouteWithName(PageOnePageRoute.name);
  }

  void backToPostsAndGoToPost() {
    _navigatorHelper.router.popUntilRouteWithName(PostsPageRoute.name);
    _navigatorHelper.router.push(
      PostPageRoute(post: Post(id: 1, title: 'title')),
    );
  }

  void backWithData() {
    _navigatorHelper.router.pop('VOLTOU');
  }
}

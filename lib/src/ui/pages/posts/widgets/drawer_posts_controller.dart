import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'drawer_posts_controller.g.dart';

@injectable
class DrawerPostsController = _DrawerControllerPostsBase with _$DrawerPostsController;

abstract class _DrawerControllerPostsBase with Store {
  @observable
  bool status;

  void setStatus(bool status) => this.status = status;

  void activateFingerprint(bool status) {
    setStatus(status);
  }

  _DrawerControllerPostsBase() {
    setStatus(false);
  }
}

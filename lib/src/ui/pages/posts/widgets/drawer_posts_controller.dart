import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'drawer_posts_controller.g.dart';

@injectable
class DrawerPostsController = _DrawerControllerPostsBase with _$DrawerPostsController;

abstract class _DrawerControllerPostsBase with Store {
  final SharedPreferences sharedPreferences;
  @observable
  bool status;

  void setStatus(bool status) => this.status = status;

  void activateFingerprint(bool status) {
    sharedPreferences.setBool('fingerprintIsActive', status);
    setStatus(status);
  }

  _DrawerControllerPostsBase(this.sharedPreferences) {
    final status = sharedPreferences.getBool('fingerprintIsActive');
    if (status == null) {
      setStatus(false);
      return;
    }
    setStatus(status);
  }
}

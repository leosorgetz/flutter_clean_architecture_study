import 'package:estudo_app/config/router/base_router.gr.dart';
import 'package:estudo_app/src/domain/data_sources/set_fingerprint_is_active/set_fingerprint_is_active_data_source_interface.dart';
import 'package:estudo_app/src/domain/use_cases/get_fingerprint_is_active/get_fingerprint_is_active_use_case_interface.dart';
import 'package:estudo_app/src/ui/utils/helpers/navigator_helper.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'drawer_posts_controller.g.dart';

@injectable
class DrawerPostsController = _DrawerControllerPostsBase with _$DrawerPostsController;

abstract class _DrawerControllerPostsBase with Store {
  final IGetFingerprintIsActiveUseCase getFingerprintIsActiveUseCase;
  final ISetFingerprintIsActiveDataSource setFingerprintIsActiveDataSource;
  final NavigatorHelper _navigatorHelper;

  @observable
  bool? status;

  @action
  void setStatus(bool status) => this.status = status;

  Future<void> activateFingerprint(bool status) async {
    await setFingerprintIsActiveDataSource(status);
    setStatus(status);
  }

  _DrawerControllerPostsBase(
    this.getFingerprintIsActiveUseCase,
    this.setFingerprintIsActiveDataSource,
    this._navigatorHelper,
  ) {
    setStatus(getFingerprintIsActiveUseCase());
  }

  void navigateToAnimationPage() {
    _navigatorHelper.router.pop();
    _navigatorHelper.router.push(ExampleAnimationPageRoute());
  }

  void navigateToFlow() {
    _navigatorHelper.router.pop();
    _navigatorHelper.router.push(PageOnePageRoute());
  }
}

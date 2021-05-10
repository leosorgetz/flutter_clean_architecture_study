import 'package:estudo_app/config/router/base_router.gr.dart';
import 'package:estudo_app/src/domain/use_cases/get_fingerprint_is_active/get_fingerprint_is_active_use_case_interface.dart';
import 'package:estudo_app/src/ui/utils/helpers/fingerprint_helper.dart';
import 'package:estudo_app/src/ui/utils/helpers/navigator_helper.dart';
import 'package:estudo_app/src/ui/utils/helpers/toast_helper.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'splash_controller.g.dart';

@injectable
class SplashController = _SplashControllerBase with _$SplashController;

abstract class _SplashControllerBase with Store {
  final ToastHelper toastHelper;
  final IGetFingerprintIsActiveUseCase getFingerprintIsActiveUseCase;
  final NavigatorHelper _navigatorHelper;
  final FingerprintHelper _fingerprintHelper;

  @observable
  String? errorMessage;

  _SplashControllerBase(
    this.toastHelper,
    this.getFingerprintIsActiveUseCase,
    this._navigatorHelper,
    this._fingerprintHelper,
  );

  @action
  void setErrorMessage(String errorMessage) => this.errorMessage = errorMessage;

  Future<void> checkBiometric() async {
    final fingerprintIsActive = getFingerprintIsActiveUseCase();
    if (fingerprintIsActive) {
      final fingerprintGranted = await _fingerprintHelper.checkBiometric();
      if (fingerprintGranted) {
        _navigatorHelper.router.pushAndPopUntil(PostsRoute(), predicate: (route) => false);
        return;
      }
      setErrorMessage('Não Autenticou.');
    } else {
      Future.delayed(Duration(milliseconds: 200), () {
        _navigatorHelper.router.pushAndPopUntil(PostsRoute(), predicate: (route) => false);
      });
    }
  }
}

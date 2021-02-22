import 'package:auto_route/auto_route.dart';
import 'package:estudo_app/config/router/base_router.gr.dart';
import 'package:estudo_app/src/domain/use_cases/get_fingerprint_is_active/get_fingerprint_is_active_use_case_interface.dart';
import 'package:estudo_app/src/ui/utils/helpers/toast_helper.dart';
import 'package:injectable/injectable.dart';
import 'package:local_auth/local_auth.dart';
import 'package:mobx/mobx.dart';

part 'splash_controller.g.dart';

@injectable
class SplashController = _SplashControllerBase with _$SplashController;

abstract class _SplashControllerBase with Store {
  final ToastHelper toastHelper;
  final IFingerprintIsActiveUseCase fingerprintIsActiveUseCase;
  final message = 'Autentique para entrar no app.';

  @observable
  String errorMessage;

  _SplashControllerBase(
    this.toastHelper,
    this.fingerprintIsActiveUseCase,
  );

  @action
  void setErrorMessage(String errorMessage) => this.errorMessage = errorMessage;

  Future<void> checkBiometric() async {
    final fingerprintIsActive = await fingerprintIsActiveUseCase();
    if (fingerprintIsActive) {
      final _localAuth = LocalAuthentication();
      final canCheckBiometrics = await _localAuth.canCheckBiometrics;
      if (canCheckBiometrics) {
        final availableBiometrics = await _localAuth.getAvailableBiometrics();
        if (availableBiometrics.contains(BiometricType.face)) {
          try {
            final didAuthenticate = await _localAuth.authenticateWithBiometrics(
              localizedReason: message,
            );
            if (didAuthenticate) {
              ExtendedNavigator.root.pushAndRemoveUntil(Routes.postsPage, (route) => false);
            } else {
              setErrorMessage('Não Autenticou.');
              return;
            }
          } on Exception catch (_) {
            setErrorMessage('Não Autenticou.');
          }
        }
        if (availableBiometrics.contains(BiometricType.fingerprint)) {
          try {
            final didAuthenticate = await _localAuth.authenticateWithBiometrics(
              localizedReason: message,
            );
            if (didAuthenticate) {
              ExtendedNavigator.root.pushAndRemoveUntil(Routes.postsPage, (route) => false);
            } else {
              setErrorMessage('Não Autenticou.');
              return;
            }
          } on Exception catch (_) {
            setErrorMessage('Não Autenticou.');
          }
        }
      } else {
        setErrorMessage('Não existe biometria para usar.');
        ExtendedNavigator.root.pushAndRemoveUntil(Routes.postsPage, (route) => false);
      }
    } else {
      ExtendedNavigator.root.pushAndRemoveUntil(Routes.postsPage, (route) => false);
    }
  }
}

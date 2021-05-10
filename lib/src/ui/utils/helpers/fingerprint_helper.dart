import 'package:estudo_app/src/ui/utils/helpers/logger_helper.dart';
import 'package:injectable/injectable.dart';
import 'package:local_auth/local_auth.dart';

@injectable
class FingerprintHelper {
  static const _message = 'Autentique para entrar no app.';
  final LoggerHelper _loggerHelper;

  FingerprintHelper(this._loggerHelper);

  Future<bool> checkBiometric({String? authenticateMessage = _message}) async {
    final _localAuth = LocalAuthentication();
    final canCheckBiometrics = await _localAuth.canCheckBiometrics;
    if (canCheckBiometrics) {
      final availableBiometrics = await _localAuth.getAvailableBiometrics();
      if (availableBiometrics.contains(BiometricType.face)) {
        try {
          final didAuthenticate = await _localAuth.authenticate(
            localizedReason: _message,
          );
          if (didAuthenticate) {
            return true;
          } else {
            _loggerHelper.show('Não Autenticou.');
            return false;
          }
        } on Exception catch (_) {
          _loggerHelper.show('Não Autenticou.');
          return false;
        }
      }
      if (availableBiometrics.contains(BiometricType.fingerprint)) {
        try {
          final didAuthenticate = await _localAuth.authenticate(
            localizedReason: _message,
          );
          if (didAuthenticate) {
            return true;
          } else {
            _loggerHelper.show('Não Autenticou.');
            return false;
          }
        } on Exception catch (_) {
          _loggerHelper.show('Não Autenticou.');
          return false;
        }
      }
      _loggerHelper.show('Não existe biometria para usar.');
      return false;
    } else {
      _loggerHelper.show('Não existe biometria para usar.');
      return false;
    }
  }
}

import 'package:estudo_app/src/domain/data_sources/fingerprint_is_active/fingerprint_is_active_interface.dart';
import 'package:estudo_app/src/domain/utils/app_storage_client/app_storage_client_interface.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IFingerprintIsActiveDataSource)
class FingerprintIsActiveDataSource implements IFingerprintIsActiveDataSource {
  FingerprintIsActiveDataSource(this._appStorageClient);

  final IAppStorageClient _appStorageClient;

  @override
  Future<bool> call() async {
    final fingerprintIsActive = await _appStorageClient.getBool('fingerprintIsActive');
    return fingerprintIsActive != null && fingerprintIsActive;
  }
}

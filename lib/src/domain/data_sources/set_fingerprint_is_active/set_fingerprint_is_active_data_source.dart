import 'package:estudo_app/src/domain/data_sources/set_fingerprint_is_active/set_fingerprint_is_active_data_source_interface.dart';
import 'package:estudo_app/src/domain/utils/app_storage_client/app_storage_client_interface.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ISetFingerprintIsActiveDataSource)
class SetFingerprintIsActiveDataSource implements ISetFingerprintIsActiveDataSource {
  SetFingerprintIsActiveDataSource(this._appStorageClient);

  final IAppStorageClient _appStorageClient;

  @override
  Future<bool> call(bool status) async {
    return _appStorageClient.setBool('fingerprintIsActive', status);
  }
}

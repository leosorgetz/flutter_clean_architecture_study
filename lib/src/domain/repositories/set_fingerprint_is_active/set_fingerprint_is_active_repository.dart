import 'package:estudo_app/src/domain/data_sources/set_fingerprint_is_active/set_fingerprint_is_active_data_source_interface.dart';
import 'package:estudo_app/src/domain/repositories/set_fingerprint_is_active/set_fingerprint_is_active_repository_interface.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ISetFingerprintIsActiveRepository)
class SetFingerprintIsActiveRepository implements ISetFingerprintIsActiveRepository {
  SetFingerprintIsActiveRepository(this._dataSource);

  final ISetFingerprintIsActiveDataSource _dataSource;

  @override
  Future<bool> call(bool status) {
    return _dataSource(status);
  }
}

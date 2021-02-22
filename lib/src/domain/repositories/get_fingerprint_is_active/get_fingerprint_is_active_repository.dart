import 'package:estudo_app/src/domain/data_sources/get_fingerprint_is_active/get_fingerprint_is_active_repository_interface.dart';
import 'package:estudo_app/src/domain/repositories/get_fingerprint_is_active/get_fingerprint_is_active_repository_interface.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IFingerprintIsActiveRepository)
class FingerprintIsActiveRepository implements IFingerprintIsActiveRepository {
  FingerprintIsActiveRepository(this._dataSource);

  final IFingerprintIsActiveDataSource _dataSource;

  @override
  Future<bool> call() {
    return _dataSource();
  }
}

import 'package:estudo_app/src/domain/data_sources/fingerprint_is_active/fingerprint_is_active_interface.dart';
import 'package:estudo_app/src/domain/repositories/fingerprint_is_active/fingerprint_is_active_interface.dart';
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

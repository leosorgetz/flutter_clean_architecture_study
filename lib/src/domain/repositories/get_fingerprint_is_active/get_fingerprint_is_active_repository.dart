import 'package:estudo_app/src/domain/data_sources/get_fingerprint_is_active/get_fingerprint_is_active_data_source_interface.dart';
import 'package:estudo_app/src/domain/repositories/get_fingerprint_is_active/get_fingerprint_is_active_repository_interface.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IGetFingerprintIsActiveRepository)
class GetFingerprintIsActiveRepository implements IGetFingerprintIsActiveRepository {
  GetFingerprintIsActiveRepository(this._dataSource);

  final IGetFingerprintIsActiveDataSource _dataSource;

  @override
  bool call() {
    return _dataSource();
  }
}

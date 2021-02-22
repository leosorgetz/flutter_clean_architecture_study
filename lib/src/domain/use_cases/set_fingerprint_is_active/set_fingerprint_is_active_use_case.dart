import 'package:estudo_app/src/domain/repositories/set_fingerprint_is_active/set_fingerprint_is_active_repository_interface.dart';
import 'package:estudo_app/src/domain/use_cases/set_fingerprint_is_active/set_fingerprint_is_active_use_case_interface.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ISetFingerprintIsActiveUseCase)
class SetFingerprintIsActiveUseCase implements ISetFingerprintIsActiveUseCase {
  SetFingerprintIsActiveUseCase(this._repository);

  final ISetFingerprintIsActiveRepository _repository;

  @override
  Future<bool> call(bool status) {
    return _repository(status);
  }
}

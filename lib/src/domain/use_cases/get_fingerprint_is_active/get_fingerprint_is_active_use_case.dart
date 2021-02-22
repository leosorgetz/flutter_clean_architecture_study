import 'package:estudo_app/src/domain/repositories/get_fingerprint_is_active/get_fingerprint_is_active_repository_interface.dart';
import 'package:estudo_app/src/domain/use_cases/get_fingerprint_is_active/get_fingerprint_is_active_use_case_interface.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IFingerprintIsActiveUseCase)
class FingerprintIsActiveUseCase implements IFingerprintIsActiveUseCase {
  FingerprintIsActiveUseCase(this._repository);

  final IFingerprintIsActiveRepository _repository;

  @override
  Future<bool> call() {
    return _repository();
  }
}

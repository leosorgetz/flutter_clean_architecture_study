import 'package:estudo_app/src/domain/repositories/fingerprint_is_active/fingerprint_is_active_interface.dart';
import 'package:estudo_app/src/domain/use_cases/get_fingerprint_is_active/fingerprint_is_active_interface.dart';
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

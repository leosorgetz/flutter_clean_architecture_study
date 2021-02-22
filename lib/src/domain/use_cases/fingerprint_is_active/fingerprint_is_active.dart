@Injectable(as: IFingerprintIsActiveUseCase)
class FingerprintIsActiveUseCase implements IFingerprintIsActiveUseCase {
  FingerprintIsActiveUseCase(this._repository);

  final IFingerprintIsActiveRepository _repository;

  @override
  Future<bool> call() {
    return _repository();
  }
}

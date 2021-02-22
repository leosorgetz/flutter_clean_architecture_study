@Injectable(as: IFingerprintIsActiveRepository)
class FingerprintIsActiveRepository implements IFingerprintIsActiveRepository {
  FingerprintIsActiveRepository(this._dataSource);

  final IFingerprintIsActiveDataSource _dataSource;

  @override
  Future<bool> call() {
    return _dataSource();
  }
}

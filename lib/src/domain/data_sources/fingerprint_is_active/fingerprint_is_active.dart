@Injectable(as: IFingerprintIsActiveDataSource)
class FingerprintIsActiveDataSource implements IFingerprintIsActiveDataSource {
  FingerprintIsActiveDataSource(this._appHttpClient);

  final IAppHttpClient _appHttpClient;

  @override
  Future<bool> call() async {
    // Your code..
  }
}

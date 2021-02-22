@Injectable(as: ITemplateDataSource)
class TemplateDataSource implements ITemplateDataSource {
  TemplateDataSource(this._appHttpClient);

  final IAppHttpClient _appHttpClient;

  @override
  Future<ResultType> call() async {
    // Your code..
  }
}

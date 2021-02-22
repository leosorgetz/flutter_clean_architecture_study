@Injectable(as: ITemplateRepository)
class TemplateRepository implements ITemplateRepository {
  TemplateRepository(this._dataSource);

  final ITemplateDataSource _dataSource;

  @override
  Future<ResultType> call() {
    return _dataSource();
  }
}

@Injectable(as: ITemplateUseCase)
class TemplateUseCase implements ITemplateUseCase {
  TemplateUseCase(this._repository);

  final ITemplateRepository _repository;

  @override
  Future<ResultType> call() {
    return _repository();
  }
}

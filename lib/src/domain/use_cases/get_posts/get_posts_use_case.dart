import 'package:estudo_app/src/domain/entities/post.dart';
import 'package:estudo_app/src/domain/repositories/get_posts/get_posts_repository_interface.dart';
import 'package:estudo_app/src/domain/use_cases/get_posts/get_posts_use_case_interface.dart';
import 'package:estudo_app/src/domain/utils/result_wrapper/result.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IGetPostsUseCase)
class GetPostsUseCase implements IGetPostsUseCase {
  GetPostsUseCase(this._repository);

  final IGetPostsRepository _repository;

  @override
  Future<Result<Exception, List<Post>>> call() async {
    // Caso queira tratar alguma entrada ;)
    // if (condition) {
    //   return ResultError(Exception('error'));
    // }
    return _repository();
  }
}

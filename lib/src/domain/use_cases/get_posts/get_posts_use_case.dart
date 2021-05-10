import 'package:estudo_app/src/domain/entities/post.dart';
import 'package:estudo_app/src/domain/repositories/get_posts/get_posts_repository_interface.dart';
import 'package:estudo_app/src/domain/use_cases/get_posts/get_posts_use_case_interface.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IGetPostsUseCase)
class GetPostsUseCase implements IGetPostsUseCase {
  GetPostsUseCase(this._repository);

  final IGetPostsRepository _repository;

  @override
  Future<List<Post>> call() {
    return _repository();
  }
}

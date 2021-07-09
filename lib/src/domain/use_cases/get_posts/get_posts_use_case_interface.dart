import 'package:estudo_app/src/domain/entities/post.dart';
import 'package:estudo_app/src/domain/utils/result_wrapper/result.dart';

abstract class IGetPostsUseCase {
  Future<Result<Exception, List<Post>>> call();
}

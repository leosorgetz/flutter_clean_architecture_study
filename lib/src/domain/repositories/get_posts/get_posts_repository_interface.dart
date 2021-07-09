import 'package:estudo_app/src/domain/entities/post.dart';
import 'package:estudo_app/src/domain/utils/result_wrapper/result.dart';

abstract class IGetPostsRepository {
  Future<Result<Exception, List<Post>>> call();
}

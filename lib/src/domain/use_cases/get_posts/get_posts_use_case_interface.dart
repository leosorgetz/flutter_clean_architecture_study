import 'package:estudo_app/src/domain/entities/post.dart';
import 'package:estudo_app/src/domain/error/base_error.dart';
import 'package:estudo_app/src/domain/utils/result_wrapper/result.dart';

abstract class IGetPostsUseCase {
  Future<Result<BaseError, List<Post>>> call();
}

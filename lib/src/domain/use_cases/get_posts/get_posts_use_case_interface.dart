import 'package:estudo_app/src/domain/entities/post.dart';

abstract class IGetPostsUseCase {
  Future<List<Post>> call();
}

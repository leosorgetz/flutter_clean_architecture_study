import 'package:estudo_app/src/domain/models/result/post.dart';

abstract class IGetPostsUseCase {
  Future<List<Post>> call();
}

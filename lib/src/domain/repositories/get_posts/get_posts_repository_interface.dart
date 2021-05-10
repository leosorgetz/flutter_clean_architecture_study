import 'package:estudo_app/src/domain/entities/post.dart';

abstract class IGetPostsRepository {
  Future<List<Post>> call();
}

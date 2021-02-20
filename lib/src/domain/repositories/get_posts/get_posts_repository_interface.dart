import 'package:estudo_app/src/domain/models/result/post.dart';

abstract class IGetPostsRepository {
  Future<List<Post>> call();
}

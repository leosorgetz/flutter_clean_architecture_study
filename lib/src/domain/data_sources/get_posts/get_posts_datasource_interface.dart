import 'package:estudo_app/src/domain/models/result/post.dart';

abstract class IGetPostsDataSource {
  Future<List<Post>> call();
}

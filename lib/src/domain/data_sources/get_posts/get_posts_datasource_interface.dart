import 'package:estudo_app/src/domain/models/post_model.dart';

abstract class IGetPostsDataSource {
  Future<List<PostModel>> call();
}

import 'package:estudo_app/src/domain/models/post_model.dart';

class Post {
  final int? id;
  final String? title;

  Post({
    this.id,
    this.title,
  });

  factory Post.fromPostModel(PostModel postModel) {
    return Post(
      id: postModel.id,
      title: postModel.title,
    );
  }
}

import 'package:estudo_app/src/domain/data_sources/get_posts/get_posts_datasource_interface.dart';
import 'package:estudo_app/src/domain/entities/post.dart';
import 'package:estudo_app/src/domain/repositories/get_posts/get_posts_repository_interface.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IGetPostsRepository)
class GetPostsRepository implements IGetPostsRepository {
  GetPostsRepository(this._dataSource);

  final IGetPostsDataSource _dataSource;

  @override
  Future<List<Post>> call() async {
    final postModels = await _dataSource();
    // ignore: unnecessary_lambdas
    return postModels.map((item) => Post.fromPostModel(item)).toList();
    // (response.data as List).map((item) => Post.fromJson(item)).toList();
    // List.from(elements);
    // Post.fromPostModel();
    // final posts =
    // return _dataSource();
  }
}

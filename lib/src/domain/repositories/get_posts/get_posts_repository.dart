import 'package:estudo_app/src/domain/data_sources/get_posts/get_posts_datasource_interface.dart';
import 'package:estudo_app/src/domain/entities/post.dart';
import 'package:estudo_app/src/domain/repositories/get_posts/get_posts_repository_interface.dart';
import 'package:estudo_app/src/domain/utils/result_wrapper/result.dart';
import 'package:estudo_app/src/domain/utils/result_wrapper/result_error.dart';
import 'package:estudo_app/src/domain/utils/result_wrapper/result_success.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IGetPostsRepository)
class GetPostsRepository implements IGetPostsRepository {
  GetPostsRepository(this._dataSource);

  final IGetPostsDataSource _dataSource;

  @override
  Future<Result<Exception, List<Post>>> call() async {
    try {
      final result = await _dataSource();
      final posts = result.map((item) => Post.fromPostModel(item)).toList();
      return ResultSuccess(posts);
    } on Exception catch (e) {
      return ResultError(e);
    }
  }
}

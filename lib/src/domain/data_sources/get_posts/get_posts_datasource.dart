import 'package:estudo_app/src/domain/data_sources/get_posts/get_posts_datasource_interface.dart';
import 'package:estudo_app/src/domain/models/result/post.dart';
import 'package:estudo_app/src/domain/utils/app_http_client/app_http_client_interface.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IGetPostsDataSource)
class GetPostsDataSource implements IGetPostsDataSource {
  GetPostsDataSource(this._appHttpClient);

  final IAppHttpClient _appHttpClient;

  @override
  Future<List<Post>> call() async {
    final response = await _appHttpClient.get('/posts');
    return (response.data as List).map((item) => Post.fromJson(item)).toList();
  }
}

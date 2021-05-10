import 'package:estudo_app/src/domain/data_sources/get_posts/get_posts_datasource_interface.dart';
import 'package:estudo_app/src/domain/repositories/get_posts/get_posts_repository_interface.dart';
import 'package:estudo_app/src/domain/utils/app_http_client/app_http_client_interface.dart';
import 'package:mockito/annotations.dart';

import 'mocked_classes.mocks.dart';

@GenerateMocks([
  IGetPostsRepository,
  IGetPostsDataSource,
  IAppHttpClient,
])
// @GenerateMocks([IGetPostsDataSource])
// @GenerateMocks([IAppHttpClient])
class MockedClasses {
  static final appHttpClientMock = MockIAppHttpClient();
  static final getPostsRepositoryMock = MockIGetPostsRepository();
  static final getPostsDataSourceMock = MockIGetPostsDataSource();
}

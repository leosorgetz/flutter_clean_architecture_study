import 'package:estudo_app/src/domain/data_sources/get_posts/get_posts_datasource_interface.dart';
import 'package:estudo_app/src/domain/repositories/get_posts/get_posts_repository_interface.dart';
import 'package:estudo_app/src/domain/use_cases/get_posts/get_posts_use_case_interface.dart';
import 'package:estudo_app/src/domain/utils/app_http_client/app_http_client_interface.dart';
import 'package:mockito/mockito.dart';

class AppHttpClientMock extends Mock implements IAppHttpClient {}

class GetPostsUseCaseMock extends Mock implements IGetPostsUseCase {}

class GetPostsRepositoryMock extends Mock implements IGetPostsRepository {}

class GetPostsDataSourceMock extends Mock implements IGetPostsDataSource {}

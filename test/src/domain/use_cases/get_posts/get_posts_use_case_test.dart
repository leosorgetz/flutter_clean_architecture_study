import 'package:estudo_app/src/domain/entities/post.dart';
import 'package:estudo_app/src/domain/use_cases/get_posts/get_posts_use_case.dart';
import 'package:estudo_app/src/domain/utils/result_wrapper/result_success.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../utils/mocked_classes.dart';
import '../../../utils/mocked_objects.dart';

void main() {
  final getPostsRepositoryMock = MockedClasses.getPostsRepositoryMock;
  final getPostsUseCase = GetPostsUseCase(getPostsRepositoryMock);
  final list = <Post>[
    MockedObjects.getMockedPost(),
    MockedObjects.getMockedPost(),
  ];

  group('Get Posts Use Case Tests', () {
    test(
        '[Use Case] - Deve retornar uma Lista de Posts para popular a listagem de posts',
        () async {
      when(getPostsRepositoryMock())
          .thenAnswer((_) async => ResultSuccess(list));
      final result = await getPostsUseCase();
      expect(result, isA<ResultSuccess>());
      final posts = result.extractSuccess;
      expect(posts, isA<List<Post>>());
      expect(posts.length, 2);
    });
  });
}

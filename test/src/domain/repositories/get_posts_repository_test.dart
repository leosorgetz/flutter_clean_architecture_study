import 'package:estudo_app/src/domain/models/result/post.dart';
import 'package:estudo_app/src/domain/repositories/get_posts/get_posts_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../utils/mocked_classes.dart';
import '../../utils/mocked_objects.dart';

void main() {
  final dataSource = GetPostsDataSourceMock();
  final repository = GetPostsRepository(dataSource);
  final list = <Post>[
    MockedObjects.getMockedPost(),
    MockedObjects.getMockedPost(),
  ];

  group('Get Posts Repository Tests', () {
    test('[Repository] - Deve retornar uma Lista de Posts para popular a listagem de posts', () async {
      when(dataSource()).thenAnswer((_) async => list);
      final result = await repository();
      expect(result, isA<List<Post>>());
      expect(result.length, 2);
    });
  });
}

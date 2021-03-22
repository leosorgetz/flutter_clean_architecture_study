import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:estudo_app/src/domain/data_sources/get_posts/get_posts_datasource.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../utils/mocked_classes.dart';

void main() {
  final apiHttpClient = AppHttpClientMock();
  final dataSource = GetPostsDataSource(apiHttpClient);

  group('Get Posts Data Source Tests', () {
    test('[Data Source] - Deve retornar uma Lista de Posts para popular a listagem de posts', () async {
      when(apiHttpClient.get('')).thenAnswer(
        (_) async => Response(
          data: jsonDecode(json),
          statusCode: HttpStatus.ok,
          requestOptions: RequestOptions(path: ':path'),
        ),
      );
      final future = dataSource();
      expect(future, completes);
    });
  });
}

const json = '''
[
{
	"userId": 1,
	"id": 1,
	"title": "delectus aut autem",
	"completed": false
},
{
	"userId": 1,
	"id": 1,
	"title": "delectus aut autem",
	"completed": false
},
{
	"userId": 1,
	"id": 1,
	"title": "delectus aut autem",
	"completed": false
}
]
''';

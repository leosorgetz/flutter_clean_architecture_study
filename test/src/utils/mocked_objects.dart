import 'dart:math' as math;

import 'package:estudo_app/src/domain/entities/post.dart';
import 'package:estudo_app/src/domain/models/post_model.dart';
import 'package:faker/faker.dart';

mixin MockedObjects {
  static final _faker = Faker();
  static final random = math.Random();

  static Post getMockedPost() {
    return Post(
      id: _faker.randomGenerator.integer(100),
      title: _faker.randomGenerator.string(10),
    );
  }

  static PostModel getMockedPostModel() {
    return PostModel(
      userId: _faker.randomGenerator.integer(100),
      id: _faker.randomGenerator.integer(100),
      title: _faker.randomGenerator.string(10),
      completed: _faker.randomGenerator.boolean(),
    );
  }
}

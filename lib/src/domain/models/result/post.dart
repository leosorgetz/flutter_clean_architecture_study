import 'package:json_annotation/json_annotation.dart';

part 'post.g.dart';

@JsonSerializable(nullable: false)
class Post {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  Post({this.userId, this.id, this.title, this.completed});

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  Map<String, dynamic> toJson() => _$PostToJson(this);
}

import 'package:json_annotation/json_annotation.dart';

import 'package:serilazation/model/example1/author.dart';
import 'package:serilazation/model/example1/comment.dart';

part 'post.g.dart';

@JsonSerializable()
class Post {
  final String? postId;
  final String? title;
  final String? content;
  @JsonKey(defaultValue: [])
  final List<String>? tags;
  final Author? author;
  final Comment? comment;
  @JsonKey(defaultValue: false)
  final bool isFeatured;
  @JsonKey(defaultValue: 0)
  final int likes;

  Post({
    required this.postId,
    required this.title,
    required this.content,
    required this.tags,
    required this.author,
    required this.comment,
    required this.isFeatured,
    required this.likes,
  });

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
  Map<String, dynamic> toJson() => _$PostToJson(this);
}

import 'package:json_annotation/json_annotation.dart';
import 'package:serilazation/model/author.dart';
import 'package:serilazation/model/post.dart';

part 'blog.g.dart';

@JsonSerializable()
class Blog {
  @JsonKey(name: "feed_id")
  final String? feedId;
  final String? title;
  @JsonKey(fromJson: _dateFromJson, toJson: _dateToJson, name: "published_at")
  final DateTime? publishedAt;
  final Author? author;
  @JsonKey(name: "feed")
  final Post? post;
  @JsonKey(name: "is_active")
  final bool isActive;
  Blog({
    required this.feedId,
    required this.title,
    required this.publishedAt,
    required this.author,
    required this.post,
    required this.isActive,
  });

  factory Blog.fromJson(Map<String, dynamic> json) => _$BlogFromJson(json);
  Map<String, dynamic> toJson() => _$BlogToJson(this);

  static DateTime? _dateFromJson(String? date) =>
      date != null ? DateTime.parse(date) : null;
  static String? _dateToJson(DateTime? date) => date?.toIso8601String();
}

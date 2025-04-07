import 'package:json_annotation/json_annotation.dart';
import 'package:serilazation/model/blog.dart';

part 'blog_feed.g.dart';

@JsonSerializable()
class BlogFeed {
  final String? status;
  @JsonKey(defaultValue: 0)
  final int total;
  @JsonKey(name: 'data', defaultValue: [])
  final List<Blog> blogs;
  BlogFeed({required this.status, required this.total, required this.blogs});

  factory BlogFeed.fromJson(Map<String, dynamic> json) =>
      _$BlogFeedFromJson(json);
  Map<String, dynamic> toJson() => _$BlogFeedToJson(this);
}

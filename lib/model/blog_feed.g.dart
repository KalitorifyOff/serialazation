// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog_feed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BlogFeed _$BlogFeedFromJson(Map<String, dynamic> json) => BlogFeed(
  status: json['status'] as String?,
  total: (json['total'] as num?)?.toInt() ?? 0,
  blogs:
      (json['data'] as List<dynamic>?)
          ?.map((e) => Blog.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$BlogFeedToJson(BlogFeed instance) => <String, dynamic>{
  'status': instance.status,
  'total': instance.total,
  'data': instance.blogs,
};

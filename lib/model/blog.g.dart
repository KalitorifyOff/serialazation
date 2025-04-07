// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Blog _$BlogFromJson(Map<String, dynamic> json) => Blog(
  feedId: json['feed_id'] as String?,
  title: json['title'] as String?,
  publishedAt: Blog._dateFromJson(json['published_at'] as String?),
  author:
      json['author'] == null
          ? null
          : Author.fromJson(json['author'] as Map<String, dynamic>),
  post:
      json['feed'] == null
          ? null
          : Post.fromJson(json['feed'] as Map<String, dynamic>),
  isActive: json['is_active'] as bool,
);

Map<String, dynamic> _$BlogToJson(Blog instance) => <String, dynamic>{
  'feed_id': instance.feedId,
  'title': instance.title,
  'published_at': Blog._dateToJson(instance.publishedAt),
  'author': instance.author,
  'feed': instance.post,
  'is_active': instance.isActive,
};

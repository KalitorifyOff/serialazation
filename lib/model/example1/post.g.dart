// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Post _$PostFromJson(Map<String, dynamic> json) => Post(
  postId: json['postId'] as String?,
  title: json['title'] as String?,
  content: json['content'] as String?,
  tags:
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ?? [],
  author:
      json['author'] == null
          ? null
          : Author.fromJson(json['author'] as Map<String, dynamic>),
  comment:
      json['comment'] == null
          ? null
          : Comment.fromJson(json['comment'] as Map<String, dynamic>),
  isFeatured: json['isFeatured'] as bool? ?? false,
  likes: (json['likes'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
  'postId': instance.postId,
  'title': instance.title,
  'content': instance.content,
  'tags': instance.tags,
  'author': instance.author,
  'comment': instance.comment,
  'isFeatured': instance.isFeatured,
  'likes': instance.likes,
};

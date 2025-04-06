// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Comment _$CommentFromJson(Map<String, dynamic> json) => Comment(
  userId: json['userId'] as String,
  comment: json['comment'] as String,
  timestamp: Comment._dateFromJson(json['timestamp'] as String?),
);

Map<String, dynamic> _$CommentToJson(Comment instance) => <String, dynamic>{
  'userId': instance.userId,
  'comment': instance.comment,
  'timestamp': Comment._dateToJson(instance.timestamp),
};

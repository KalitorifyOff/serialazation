// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Comment _$CommentFromJson(Map<String, dynamic> json) => Comment(
  userId: json['userId'] as String?,
  comment: json['comment'] as String?,
  timeStamp: Comment._dateFromJson(json['timeStamp'] as String?),
);

Map<String, dynamic> _$CommentToJson(Comment instance) => <String, dynamic>{
  'userId': instance.userId,
  'comment': instance.comment,
  'timeStamp': Comment._dateToJson(instance.timeStamp),
};

import 'package:json_annotation/json_annotation.dart';

part 'comment.g.dart';

@JsonSerializable()
class Comment {
  final String? userId;
  final String? comment;
  @JsonKey(fromJson: _dateFromJson, toJson: _dateToJson)
  final DateTime? timeStamp;
  Comment({
    required this.userId,
    required this.comment,
    required this.timeStamp,
  });

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);
  Map<String, dynamic> toJson() => _$CommentToJson(this);

  static DateTime? _dateFromJson(String? date) =>
      date != null ? DateTime.parse(date) : null;
  static String? _dateToJson(DateTime? date) => date?.toIso8601String();
}

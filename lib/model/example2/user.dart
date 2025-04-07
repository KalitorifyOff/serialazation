import 'package:json_annotation/json_annotation.dart';
import 'package:serilazation/model/example2/address.dart';

part 'user.g.dart';

enum Role { admin, user, guest }

@JsonEnum()
enum RoleEnum {
  @JsonValue("admin")
  admin,
  @JsonValue("user")
  user,
  @JsonValue("guest")
  gues,
}

@JsonSerializable()
class User {
  @JsonKey(name: "user_id")
  final String userId;
  final String? name;
  @JsonKey(name: "joined_at", fromJson: _dateFromJson, toJson: _dateToJson)
  final DateTime? joinedAt;
  final String? optionalBio;
  @JsonKey(defaultValue: false)
  final bool isActive;
  final Address address;
  final RoleEnum role;
  User({
    required this.userId,
    this.name,
    this.joinedAt,
    this.optionalBio,
    required this.isActive,
    required this.address,
    required this.role,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);

  static DateTime? _dateFromJson(String? date) =>
      date != null ? DateTime.parse(date) : null;
  static String? _dateToJson(DateTime? date) => date?.toIso8601String();
}

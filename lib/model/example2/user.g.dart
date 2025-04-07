// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
  userId: json['user_id'] as String,
  name: json['name'] as String?,
  joinedAt: User._dateFromJson(json['joined_at'] as String?),
  optionalBio: json['optionalBio'] as String?,
  isActive: json['isActive'] as bool? ?? false,
  address: Address.fromJson(json['address'] as Map<String, dynamic>),
  role: $enumDecode(_$RoleEnumEnumMap, json['role']),
);

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
  'user_id': instance.userId,
  'name': instance.name,
  'joined_at': User._dateToJson(instance.joinedAt),
  'optionalBio': instance.optionalBio,
  'isActive': instance.isActive,
  'address': instance.address,
  'role': _$RoleEnumEnumMap[instance.role]!,
};

const _$RoleEnumEnumMap = {
  RoleEnum.admin: 'admin',
  RoleEnum.user: 'user',
  RoleEnum.gues: 'guest',
};

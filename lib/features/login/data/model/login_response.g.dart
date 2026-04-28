// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      message: json['message'] as String?,
      status: json['status'] as String,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
  token: json['token'] as String,
  user: UserData.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
  'token': instance.token,
  'user': instance.user,
};

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
  id: json['id'] as String,
  name: json['name'] as String,
  role: json['role'] as String,
  phone: json['phone'] as String,
  age: (json['age'] as num?)?.toInt(),
  fieldName: json['field_name'] as String?,
  governorate: json['governorate'] as String,
  matchesPlayed: (json['matches_played'] as num).toInt(),
  matchNotifications: json['match_notifications'] as bool,
  walletBalance: (json['wallet_balance'] as num).toInt(),
);

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'role': instance.role,
  'phone': instance.phone,
  'age': instance.age,
  'field_name': instance.fieldName,
  'governorate': instance.governorate,
  'matches_played': instance.matchesPlayed,
  'match_notifications': instance.matchNotifications,
  'wallet_balance': instance.walletBalance,
};

import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  final String? message;
  final String status;
  final Data data;

  LoginResponse({this.message, required this.status, required this.data});

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@JsonSerializable()
class Data {
  final String token;
  final UserData user;

  Data({required this.token, required this.user});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@JsonSerializable()
class UserData {
  final String id;
  final String name;
  final String role;
  final String phone;
  final int? age;
  @JsonKey(name: 'field_name')
  final String? fieldName;
  final String governorate;
  @JsonKey(name: 'matches_played')
  final int matchesPlayed;
  @JsonKey(name: 'match_notifications')
  final bool matchNotifications;
  @JsonKey(name: 'wallet_balance')
  final int walletBalance;

  UserData({
    required this.id,
    required this.name,
    required this.role,
    required this.phone,
    this.age,
    this.fieldName,
    required this.governorate,
    required this.matchesPlayed,
    required this.matchNotifications,
    required this.walletBalance,
  });

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}

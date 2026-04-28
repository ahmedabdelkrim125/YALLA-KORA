import 'package:json_annotation/json_annotation.dart';

part 'signup_response.g.dart';

@JsonSerializable()
class SignupResponse {
  final String? message;
  final String status;
  final Data data;

  SignupResponse({required this.message, required this.status, required this.data});

  factory SignupResponse.fromJson(Map<String, dynamic> json) =>
      _$SignupResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SignupResponseToJson(this);
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

  UserData({
    required this.id,
    required this.name,
    required this.role,
    required this.phone,
    this.age,
    this.fieldName,
    required this.governorate,
  });

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupRequestBody _$SignupRequestBodyFromJson(Map<String, dynamic> json) =>
    SignupRequestBody(
      phone: json['phone'] as String,
      email: json['email'] as String,
      name: json['name'] as String,
      gender: json['gender'] as String,
      birthdate: json['birthdate'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$SignupRequestBodyToJson(SignupRequestBody instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'email': instance.email,
      'name': instance.name,
      'gender': instance.gender,
      'birthdate': instance.birthdate,
      'password': instance.password,
    };

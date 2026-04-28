// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupRequestBody _$SignupRequestBodyFromJson(Map<String, dynamic> json) =>
    SignupRequestBody(
      phone: json['phone'] as String,
      name: json['name'] as String,
      age: json['age'] as String?,
      fieldName: json['field_name'] as String?,
      governorate: json['governorate'] as String,
      password: json['password'] as String,
      role: json['role'] as String,
    );

Map<String, dynamic> _$SignupRequestBodyToJson(SignupRequestBody instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'name': instance.name,
      'role': instance.role,
      'age': ?instance.age,
      'field_name': ?instance.fieldName,
      'governorate': instance.governorate,
      'password': instance.password,
    };

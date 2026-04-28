import 'package:json_annotation/json_annotation.dart';

part 'signup_request_body.g.dart';

@JsonSerializable(includeIfNull: false)
class SignupRequestBody {
  final String phone;
  final String name;
  final String role;
  final String? age;
  @JsonKey(name: 'field_name')
  final String? fieldName;
  final String governorate;
  final String password;

  SignupRequestBody({
    required this.phone,
    required this.name,
    this.age,
    this.fieldName,
    required this.governorate,
    required this.password, required this.role,
  });

  factory SignupRequestBody.fromJson(Map<String, dynamic> json) =>
      _$SignupRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$SignupRequestBodyToJson(this);
}

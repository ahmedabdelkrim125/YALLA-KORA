import 'package:json_annotation/json_annotation.dart';

part 'signup_request_body.g.dart';

@JsonSerializable()
class SignupRequestBody {
  final String phone;
  final String email;
  final String name;
  final String gender;
  final String birthdate;
  final String password;

  SignupRequestBody({
    required this.phone,
    required this.email,
    required this.name,
    required this.gender,
    required this.birthdate,
    required this.password,
  });

  factory SignupRequestBody.fromJson(Map<String, dynamic> json) =>
      _$SignupRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$SignupRequestBodyToJson(this);
}

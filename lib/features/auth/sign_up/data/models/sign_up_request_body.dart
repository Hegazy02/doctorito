import 'package:json_annotation/json_annotation.dart';

part 'sign_up_request_body.g.dart';

@JsonSerializable()
class SignUpRequestBody {
  final String name;
  final String email;
  final String password;
  @JsonKey(name: 'password_confirmation')
  final String confirmedPassword;
  final String phone;
  final String gender;

  SignUpRequestBody({
    required this.name,
    required this.email,
    required this.password,
    required this.confirmedPassword,
    required this.phone,
    required this.gender,
  });

  Map<String, dynamic> toJson() => _$SignUpRequestBodyToJson(this);
}

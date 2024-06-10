import 'package:doctorito/features/auth/login/data/models/login_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sign_up_response.g.dart';

@JsonSerializable()
class SignUpResponse {
  final String message;
  final bool status;
  final int code;
  @JsonKey(name: 'data')
  final UserData userData;

  SignUpResponse(
      {required this.message,
      required this.status,
      required this.code,
      required this.userData});

  factory SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseFromJson(json);
}

import 'package:doctorito/features/auth/sign_up/data/models/sign_up_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_state.freezed.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.initial() = _Initial;
  const factory SignUpState.loading() = Loading;
  const factory SignUpState.success(SignUpResponse signUpResponse) = Success;
  const factory SignUpState.error({required String error}) = Error;
}

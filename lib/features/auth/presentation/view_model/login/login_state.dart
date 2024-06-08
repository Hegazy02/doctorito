import 'package:doctorito/core/network/api_error_handler.dart';
import 'package:doctorito/features/auth/data/models/login_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = Loading;
  const factory LoginState.success({required LoginResponse loginResponse}) =
      Success;
  const factory LoginState.error({required ErrorHandler error}) = Error;
}

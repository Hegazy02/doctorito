import 'package:bloc/bloc.dart';
import 'package:doctorito/features/auth/data/models/login_request_body.dart';
import 'package:doctorito/features/auth/data/repos/login_repo.dart';
import 'package:doctorito/features/auth/presentation/view_model/login/login_state.dart';
import 'package:flutter/material.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  Future<void> login(LoginRequestBody loginRequestBody) async {
    if (formKey.currentState!.validate()) {
      emit(const LoginState.loading());

      final result = await _loginRepo.login(loginRequestBody);

      result.when(success: (loginResponse) {
        emit(LoginState.success(loginResponse: loginResponse));
      }, failure: (error) {
        emit(LoginState.error(
            error: error.apiErrorModel.message ?? 'Something went wrong'));
      });
    }
  }
}

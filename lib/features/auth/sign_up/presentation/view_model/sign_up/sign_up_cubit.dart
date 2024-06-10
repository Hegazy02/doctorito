import 'package:bloc/bloc.dart';
import 'package:doctorito/features/auth/sign_up/data/models/sign_up_request_body.dart';
import 'package:doctorito/features/auth/sign_up/data/repos/sign_up_repo.dart';
import 'package:doctorito/features/auth/sign_up/presentation/view_model/sign_up/sign_up_state.dart';
import 'package:flutter/material.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepo _signUpRepo;
  SignUpCubit(this._signUpRepo) : super(const SignUpState.initial());
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Future<void> signUp() async {
    emit(const SignUpState.loading());
    final result = await _signUpRepo.signUp(
        signUpRequestBody: SignUpRequestBody(
      name: nameController.text,
      email: emailController.text,
      password: passwordController.text,
      confirmedPassword: confirmPasswordController.text,
      phone: phoneController.text,
      gender: "0",
    ));
    result.when(
      success: (signUpResponse) {
        emit(SignUpState.success(signUpResponse));
      },
      failure: (error) {
        emit(SignUpState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}

import 'dart:developer';

import 'package:doctorito/core/helpers/extentions.dart';
import 'package:doctorito/core/routing/routes.dart';
import 'package:doctorito/core/theme/styles.dart';
import 'package:doctorito/features/auth/login/data/models/login_request_body.dart';
import 'package:doctorito/features/auth/login/presentation/view_model/login/login_cubit.dart';
import 'package:doctorito/features/auth/login/presentation/views/widgets/email_and_password.dart';
import 'package:doctorito/features/auth/login/presentation/views/widgets/login_bloc_listener.dart';
import 'package:doctorito/features/auth/login/presentation/views/widgets/remember_me.dart';
import 'package:doctorito/features/auth/login/presentation/views/widgets/terms_and_conditions.dart';
import 'package:doctorito/core/widgets/custom_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome Back",
            style: Styles.style24PrimaryColorw700,
          ),
          Text(
            "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
            style: Styles.style15rGreyw400,
          ),
          SizedBox(
            height: 28.h,
          ),
          const EmailAndPassword(),
          const RememberMe(),
          SizedBox(
            height: 24.h,
          ),
          CustomButton(
            text: "Login",
            onPressed: () {
              context.read<LoginCubit>().login(LoginRequestBody(
                  email: context.read<LoginCubit>().emailController.text,
                  password:
                      context.read<LoginCubit>().passwordController.text));
            },
          ),
          SizedBox(
            height: 10.h,
          ),
          const TermsAndConditions(),
          SizedBox(
            height: 24.h,
          ),
          Row(
            children: [
              const Spacer(),
              Text.rich(
                textAlign: TextAlign.center,
                style: Styles.style12Grey3w400,
                TextSpan(children: [
                  const TextSpan(text: "Don't have an account yet? "),
                  TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => context.pushReplacementNamed(
                              Routes.signUpView,
                            ),
                      text: "Sign Up",
                      style: Styles.style12PrimaryColorw600),
                ]),
              ),
              const Spacer(),
            ],
          ),
          const LoginBlocListener()
        ],
      ),
    ))));
  }
}

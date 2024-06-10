import 'package:doctorito/core/helpers/extentions.dart';
import 'package:doctorito/core/routing/routes.dart';
import 'package:doctorito/core/theme/styles.dart';
import 'package:doctorito/features/auth/login/presentation/views/widgets/terms_and_conditions.dart';
import 'package:doctorito/core/widgets/custom_button.dart';
import 'package:doctorito/features/auth/sign_up/presentation/view/sign_up_bloc_listener.dart';
import 'package:doctorito/features/auth/sign_up/presentation/view/sign_up_form.dart';
import 'package:doctorito/features/auth/sign_up/presentation/view_model/sign_up/sign_up_cubit.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

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
            "Create Account",
            style: Styles.style24PrimaryColorw700,
          ),
          Text(
            "Enter your email and password to create an account.",
            style: Styles.style15rGreyw400,
          ),
          SizedBox(
            height: 28.h,
          ),
          const SignUpForm(),
          SizedBox(
            height: 24.h,
          ),
          CustomButton(
            text: "Sign Up",
            onPressed: context.read<SignUpCubit>().signUp,
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
                  const TextSpan(text: "Already have an account ? "),
                  TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => context.pushReplacementNamed(
                              Routes.loginView,
                            ),
                      text: "Login",
                      style: Styles.style12PrimaryColorw600),
                ]),
              ),
              const Spacer(),
            ],
          ),
          const SignUpBlocListener()
        ],
      ),
    ))));
  }
}

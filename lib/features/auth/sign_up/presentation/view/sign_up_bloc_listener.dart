import 'package:doctorito/core/helpers/extentions.dart';
import 'package:doctorito/core/routing/routes.dart';
import 'package:doctorito/features/auth/sign_up/presentation/view_model/sign_up/sign_up_cubit.dart';
import 'package:doctorito/features/auth/sign_up/presentation/view_model/sign_up/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpBlocListener extends StatelessWidget {
  const SignUpBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listener: (context, state) {
        state.whenOrNull(
          loading: () => context.showLoading(),
          error: (error) {
            context.hideLoading();
            context.showError(error);
          },
          success: (loginResponse) {
            context.hideLoading();
            context.pushReplacementNamed(
              Routes.homeView,
            );
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}

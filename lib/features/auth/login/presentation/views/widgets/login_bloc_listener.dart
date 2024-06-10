import 'package:doctorito/core/helpers/extentions.dart';
import 'package:doctorito/core/routing/routes.dart';
import 'package:doctorito/features/auth/login/presentation/view_model/login/login_cubit.dart';
import 'package:doctorito/features/auth/login/presentation/view_model/login/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        state.whenOrNull(
          loading: () => context.showLoading(),
          error: (error) {
            context.hideLoading();
            context.showError(error);
          },
          success: (loginResponse) {
            context.hideLoading();
            context.pushNamedAndRemoveUntil(
              Routes.homeView,
              predicate: (route) => false,
            );
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}

import 'package:doctorito/core/di/dependency_injection.dart';
import 'package:doctorito/core/routing/routes.dart';
import 'package:doctorito/features/auth/login/presentation/view_model/login/login_cubit.dart';
import 'package:doctorito/features/auth/login/presentation/views/login_view.dart';
import 'package:doctorito/features/auth/sign_up/presentation/view/sign_up_view.dart';
import 'package:doctorito/features/auth/sign_up/presentation/view_model/sign_up/sign_up_cubit.dart';
import 'package:doctorito/features/home/presentation/views/home_view.dart';
import 'package:doctorito/features/auth/onboarding/presentation/views/on_boarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingView:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());
      case Routes.loginView:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<LoginCubit>(),
                  child: const LoginView(),
                ));
      case Routes.signUpView:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<SignUpCubit>(),
                  child: const SignUpView(),
                ));
      case Routes.homeView:
        return MaterialPageRoute(builder: (_) => const HomeView());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text("No route defined for ${settings.name}"),
                  ),
                ));
    }
  }
}

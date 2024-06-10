import 'package:doctorito/core/helpers/app_regex.dart';
import 'package:doctorito/features/auth/login/presentation/view_model/login/login_cubit.dart';
import 'package:doctorito/core/widgets/custom_textField.dart';
import 'package:doctorito/features/auth/login/presentation/views/widgets/passowrd_validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isHiddeng = true;
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  @override
  void initState() {
    super.initState();
    context.read<LoginCubit>().passwordController.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(
            context.read<LoginCubit>().passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(
            context.read<LoginCubit>().passwordController.text);
        hasSpecialCharacters = AppRegex.hasSpecialCharacter(
            context.read<LoginCubit>().passwordController.text);
        hasNumber = AppRegex.hasNumber(
            context.read<LoginCubit>().passwordController.text);
        hasMinLength = AppRegex.hasMinLength(
            context.read<LoginCubit>().passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          CutomTextField(
            hintText: "Email",
            controller: context.read<LoginCubit>().emailController,
            validator: (val) {
              if (val!.isNotEmpty && AppRegex.isEmailValid(val)) {
                return null;
              } else {
                return "Email is not vaild";
              }
            },
          ),
          CutomTextField(
            hintText: "Password",
            controller: context.read<LoginCubit>().passwordController,
            validator: (val) {
              if (val!.isNotEmpty && AppRegex.isPasswordValid(val)) {
                return null;
              } else {
                return "Password is not vaild";
              }
            },
            isHiddeng: isHiddeng,
            iconData: isHiddeng
                ? Icons.visibility_outlined
                : Icons.visibility_off_outlined,
            onIconPressed: () {
              setState(() {
                isHiddeng = !isHiddeng;
              });
            },
          ),
          const SizedBox(height: 10),
          PassowrdValidation(
              hasLowerCase: hasLowerCase,
              hasUpperCase: hasUpperCase,
              hasSpecialCharacters: hasSpecialCharacters,
              hasNumber: hasNumber,
              hasMinLength: hasMinLength)
        ],
      ),
    );
  }
}

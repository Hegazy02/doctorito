import 'package:doctorito/core/helpers/app_regex.dart';
import 'package:doctorito/core/widgets/custom_textField.dart';
import 'package:doctorito/features/auth/login/presentation/views/widgets/passowrd_validation.dart';
import 'package:doctorito/features/auth/sign_up/presentation/view_model/sign_up/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool isHiddeng = true;
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  @override
  void initState() {
    super.initState();
    context.read<SignUpCubit>().passwordController.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(
            context.read<SignUpCubit>().passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(
            context.read<SignUpCubit>().passwordController.text);
        hasSpecialCharacters = AppRegex.hasSpecialCharacter(
            context.read<SignUpCubit>().passwordController.text);
        hasNumber = AppRegex.hasNumber(
            context.read<SignUpCubit>().passwordController.text);
        hasMinLength = AppRegex.hasMinLength(
            context.read<SignUpCubit>().passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignUpCubit>().formKey,
      child: Column(
        children: [
          CutomTextField(
            hintText: "Username",
            controller: context.read<SignUpCubit>().nameController,
            validator: (val) {
              if (val!.isNotEmpty) {
                return null;
              } else {
                return "Username is not vaild";
              }
            },
          ),
          CutomTextField(
            hintText: "Phone",
            controller: context.read<SignUpCubit>().phoneController,
            validator: (val) {
              if (val!.isNotEmpty && AppRegex.isPhoneNumberValid(val)) {
                return null;
              } else {
                return "Email is not vaild";
              }
            },
          ),
          CutomTextField(
            hintText: "Email",
            controller: context.read<SignUpCubit>().emailController,
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
            controller: context.read<SignUpCubit>().passwordController,
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
          CutomTextField(
            hintText: "Confirm Password",
            controller: context.read<SignUpCubit>().confirmPasswordController,
            validator: (val) {
              if (val!.isNotEmpty &&
                  AppRegex.isPasswordValid(val) &&
                  val == context.read<SignUpCubit>().passwordController.text) {
                return null;
              } else {
                return "Confirm your password";
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

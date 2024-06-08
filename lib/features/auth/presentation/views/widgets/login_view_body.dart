import 'package:doctorito/core/theme/styles.dart';
import 'package:doctorito/features/auth/presentation/views/widgets/custom_textField.dart';
import 'package:doctorito/features/onboarding/presentation/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  bool rememberMe = false;
  bool isHiddeng = true;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
          CutomTextField(
            hintText: "Email",
            onChanged: (value) {},
            validator: (val) {
              return null;
            },
          ),
          CutomTextField(
            hintText: "Password",
            onChanged: (value) {},
            validator: (val) {
              return null;
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
          Row(
            children: [
              Checkbox(
                value: rememberMe,
                onChanged: (value) {
                  setState(() {
                    rememberMe = value!;
                  });
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
              ),
              Text(
                "Remember me",
                style: Styles.style12Grey2w400,
              ),
              const Spacer(),
              Text(
                "Forgot Password?",
                style: Styles.style12PrimaryColorw400,
              ),
            ],
          ),
          SizedBox(
            height: 24.h,
          ),
          CustomButton(
            text: "Login",
            onPressed: () {},
          ),
          SizedBox(
            height: 10.h,
          ),
          Text.rich(
            textAlign: TextAlign.center,
            style: Styles.style12Grey2w400,
            TextSpan(children: [
              const TextSpan(text: "By logging, you agree to our "),
              TextSpan(
                  text: "Terms & Conditions ", style: Styles.style12Grey3w400),
              const TextSpan(text: "and "),
              TextSpan(text: "PrivacyPolicy.", style: Styles.style12Grey3w400),
            ]),
          ),
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
                      text: "Sign Up", style: Styles.style12PrimaryColorw600),
                ]),
              ),
              const Spacer(),
            ],
          ),
        ],
      ),
    ));
  }
}

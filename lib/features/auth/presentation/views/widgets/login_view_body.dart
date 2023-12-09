import 'package:doctorito/core/theme/colors.dart';
import 'package:doctorito/core/theme/styles.dart';
import 'package:doctorito/features/auth/presentation/views/widgets/custom_textField.dart';
import 'package:doctorito/features/home/presentation/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  bool rememberMe = false;
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
            style: Styles.style24PrimaryColorBold,
          ),
          Text(
            "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
            style: Styles.style15rGreyRegular,
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
                style: Styles.style12Grey2Regular,
              ),
              const Spacer(),
              Text(
                "Forgot Password?",
                style: Styles.style12PrimaryColorRegular,
              ),
            ],
          ),
          SizedBox(
            height: 32.h,
          ),
          CustomButton(
            text: "Login",
            onPressed: () {},
          )
        ],
      ),
    ));
  }
}

import 'package:doctorito/core/theme/styles.dart';
import 'package:doctorito/features/auth/presentation/views/widgets/custom_textField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

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
            style: Styles.style14rGreyRegular,
          ),
          SizedBox(
            height: 28.h,
          ),
          CutomTextField(hintText: "Email"),
          CutomTextField(hintText: "Password"),
        ],
      ),
    ));
  }
}

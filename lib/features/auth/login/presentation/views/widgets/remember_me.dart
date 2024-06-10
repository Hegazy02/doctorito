import 'package:doctorito/core/theme/styles.dart';
import 'package:flutter/material.dart';

class RememberMe extends StatefulWidget {
  const RememberMe({super.key});

  @override
  State<RememberMe> createState() => _RememberMeState();
}

class _RememberMeState extends State<RememberMe> {
  bool rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: rememberMe,
          onChanged: (value) {
            setState(() {
              rememberMe = value!;
            });
          },
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
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
    );
  }
}

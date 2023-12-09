import 'package:doctorito/core/theme/colors.dart';
import 'package:flutter/material.dart';

class CutomTextField extends StatelessWidget {
  final String hintText;
  const CutomTextField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: MyColors.lightGrey),
          enabledBorder: customBorder(),
          focusedBorder: customBorder(),
          errorBorder: customBorder(),
          focusedErrorBorder: customBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder customBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: MyColors.lightGrey));
  }
}

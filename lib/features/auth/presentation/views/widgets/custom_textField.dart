import 'package:doctorito/core/theme/colors.dart';
import 'package:flutter/material.dart';

class CutomTextField extends StatelessWidget {
  final String hintText;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  const CutomTextField(
      {super.key,
      required this.hintText,
      required this.onChanged,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        validator: validator,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: MyColors.lightGrey),
          enabledBorder: customBorder(),
          focusedBorder: customBorder(),
          errorBorder: customBorder(),
          focusedErrorBorder: customBorder(),
        ),
        onChanged: onChanged,
      ),
    );
  }

  OutlineInputBorder customBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: MyColors.lightGrey));
  }
}

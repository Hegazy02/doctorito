import 'package:doctorito/core/theme/colors.dart';
import 'package:doctorito/core/theme/styles.dart';
import 'package:flutter/material.dart';

class CutomTextField extends StatelessWidget {
  final String hintText;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final bool? isHiddeng;
  final IconData? iconData;
  final void Function()? onIconPressed;
  final TextEditingController? controller;
  const CutomTextField(
      {super.key,
      required this.hintText,
      this.onChanged,
      this.validator,
      this.isHiddeng,
      this.controller,
      this.iconData,
      this.onIconPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        validator: validator,
        controller: controller,
        obscureText: isHiddeng ?? false,
        decoration: InputDecoration(
          suffixIcon: iconData == null
              ? null
              : IconButton(onPressed: onIconPressed, icon: Icon(iconData)),
          hintText: hintText,
          hintStyle: Styles.style12Grey4w500,
          enabledBorder: customBorder(MyColors.lightGrey),
          focusedBorder: customBorder(MyColors.primaryColor),
          errorBorder: customBorder(MyColors.red),
          focusedErrorBorder: customBorder(MyColors.red),
        ),
        onChanged: onChanged,
        style: Styles.style12darkBluew500,
      ),
    );
  }

  OutlineInputBorder customBorder(Color color) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: color));
  }
}

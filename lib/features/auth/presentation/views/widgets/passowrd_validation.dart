import 'package:doctorito/core/theme/styles.dart';
import 'package:flutter/material.dart';

class PassowrdValidation extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinLength;

  const PassowrdValidation({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpecialCharacters,
    required this.hasNumber,
    required this.hasMinLength,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow("Has Lowercase", hasLowerCase),
        const SizedBox(height: 5),
        buildValidationRow("Has Uppercase", hasUpperCase),
        const SizedBox(height: 5),
        buildValidationRow("Has Special Characters", hasSpecialCharacters),
        const SizedBox(height: 5),
        buildValidationRow("Has Number", hasNumber),
        const SizedBox(height: 5),
        buildValidationRow("Has Min Length", hasMinLength),
      ],
    );
  }

  buildValidationRow(String text, bool value) {
    return Row(
      children: [
        Icon(
          value ? Icons.check : Icons.close,
          color: value ? Colors.green : Colors.red,
        ),
        Text(
          text,
          style: Styles.style12Grey2w400,
        ),
      ],
    );
  }
}

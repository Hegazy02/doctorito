import 'package:doctorito/core/theme/styles.dart';
import 'package:flutter/material.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.center,
      style: Styles.style12Grey2w400,
      TextSpan(children: [
        const TextSpan(text: "By logging, you agree to our "),
        TextSpan(text: "Terms & Conditions ", style: Styles.style12Grey3w400),
        const TextSpan(text: "and "),
        TextSpan(text: "PrivacyPolicy.", style: Styles.style12Grey3w400),
      ]),
    );
  }
}

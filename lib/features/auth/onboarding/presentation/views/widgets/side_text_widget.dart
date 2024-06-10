import 'package:doctorito/core/theme/styles.dart';
import 'package:flutter/material.dart';

class SideTextWidget extends StatelessWidget {
  const SideTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
      style: Styles.style12dGreyw400,
      textAlign: TextAlign.center,
    );
  }
}

import 'package:doctorito/core/theme/styles.dart';
import 'package:flutter/material.dart';

class SideTextWidget extends StatelessWidget {
  const SideTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
            style: Styles.style12dGreyBold,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

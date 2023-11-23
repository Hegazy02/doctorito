import 'package:doctorito/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SideTextWidget extends StatelessWidget {
  const SideTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Text(
        "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
        style: Styles.style12dGreyBold,
        textAlign: TextAlign.center,
      ),
    );
  }
}

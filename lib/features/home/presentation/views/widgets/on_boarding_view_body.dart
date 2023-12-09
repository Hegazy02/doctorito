import 'package:doctorito/features/home/presentation/views/widgets/custom_button.dart';
import 'package:doctorito/features/home/presentation/views/widgets/doctor_image_with_text.dart';
import 'package:doctorito/features/home/presentation/views/widgets/logo_widget.dart';
import 'package:doctorito/features/home/presentation/views/widgets/side_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30.w),
      child: Column(
        children: [
          const LogoWidget(),
          SizedBox(
            height: 25.h,
          ),
          const DoctorImageWithText(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.w),
            child: Column(
              children: [
                const SideTextWidget(),
                SizedBox(
                  height: 25.h,
                ),
                CustomButton(
                  text: "Get Started",
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

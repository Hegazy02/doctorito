import 'package:doctorito/features/home/presentation/views/widgets/best_doctor_widget.dart';
import 'package:doctorito/features/home/presentation/views/widgets/side_text_widget.dart';
import 'package:flutter/material.dart';

class DoctorImageWithText extends StatelessWidget {
  const DoctorImageWithText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ColorFiltered(
          colorFilter: ColorFilter.mode(
            Colors.white.withOpacity(0.8),
            BlendMode.modulate,
          ),
          child: Image.asset(
            "assets/images/Image.png",
          ),
        ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Colors.white.withOpacity(0),
              Colors.white.withOpacity(0),
              Colors.white.withOpacity(0),
              Colors.white,
              Colors.white,
            ],
            end: Alignment.bottomCenter,
            begin: Alignment.topCenter,
          )),
        ),
        const BestDoctorWidget(),
        const SideTextWidget(),
      ],
    );
  }
}

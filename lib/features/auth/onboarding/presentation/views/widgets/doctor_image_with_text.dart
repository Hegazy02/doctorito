import 'package:doctorito/features/auth/onboarding/presentation/views/widgets/best_doctor_widget.dart';
import 'package:flutter/material.dart';

class DoctorImageWithText extends StatelessWidget {
  const DoctorImageWithText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.white,
                    Colors.white.withOpacity(0),
                  ],
                  end: Alignment.topCenter,
                  begin: Alignment.bottomCenter,
                  stops: const [0.24, 0.4])),
          child: ColorFiltered(
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.8),
              BlendMode.modulate,
            ),
            child: Image.asset(
              "assets/images/onboarding_doctor.png",
            ),
          ),
        ),
        const BestDoctorWidget(),
      ],
    );
  }
}

import 'package:doctorito/core/theme/styles.dart';
import 'package:flutter/material.dart';

class BestDoctorWidget extends StatelessWidget {
  const BestDoctorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      bottom: 30,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Text(
          "Best Doctor \n Appointment App",
          textAlign: TextAlign.center,
          style: Styles.style32PrimaryColorw700.copyWith(height: 1.4),
        ),
      ),
    );
  }
}

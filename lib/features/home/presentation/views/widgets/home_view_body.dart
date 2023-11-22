import 'package:doctorito/features/home/presentation/views/widgets/custom_button.dart';
import 'package:doctorito/features/home/presentation/views/widgets/doctor_image_widget.dart';
import 'package:doctorito/features/home/presentation/views/widgets/logo_widget.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 30),
      child: Column(
        children: [
          LogoWidget(),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: DoctorImageWidget(),
          ),
          SizedBox(
            height: 40,
          ),
          CustomButton(),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}

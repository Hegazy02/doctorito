import 'package:doctorito/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Column(
        children: [
          SizedBox(
              height: 40,
              child: SvgPicture.asset(
                "assets/images/logo.svg",
              )),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: Stack(
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
                Positioned.fill(
                  bottom: 60,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "Best Doctor \n Appointment App",
                      textAlign: TextAlign.center,
                      style: Styles.style30,
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                        style: Styles.style12,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  padding: const EdgeInsets.symmetric(
                      vertical: 20, horizontal: 100)),
              child: const Text(
                "Get Started",
                style: Styles.style16,
              )),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}

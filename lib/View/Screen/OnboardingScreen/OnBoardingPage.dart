import 'package:flutter/material.dart';
import 'package:jobpostingapp/View/Screen/OnboardingScreen/OnBodingModdel.dart';

class Onboardingpage extends StatelessWidget {
  final Onbodingmoddel data;

  const Onboardingpage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 27),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(data.image),
            SizedBox(height: 55),

            Text(
              data.title,

              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Color(0xff111827),
              ),
            ),
            SizedBox(height: 30),
            Text(
              data.description,

              style: TextStyle(
                color: Color(0xff111827),
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

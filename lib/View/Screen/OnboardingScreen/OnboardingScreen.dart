import 'package:flutter/material.dart';
import 'package:jobpostingapp/Utils/AppImg/app_img.dart';
import 'package:jobpostingapp/View/Screen/OnboardingScreen/OnBodingModdel.dart';

class Onboardingscreen extends StatefulWidget {
  const Onboardingscreen({super.key});

  @override
  State<Onboardingscreen> createState() => _OnboardingscreenState();
}

class _OnboardingscreenState extends State<Onboardingscreen> {

  final List<Onbodingmoddel> _pages = [
    Onbodingmoddel(
      title: " Find Work Fast",
      description:
          "Find jobs curated specifically for your skills and experience",
      image: AppImg.Onbodingimg1,
    ),

    Onbodingmoddel(
      title: "Swipe to Apply",
      description:
          "Swipe right to apply instantly, left to skip - it's that simple",
      image: AppImg.Onbodingimg2,
    ),

    Onbodingmoddel(
      title: "Track & Connect",
      description: "Track your applications and chat directly with recruiters",
      image: AppImg.Onbodingimg3,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 35, right: 23),
              child: TextButton(
                onPressed: () {},

                style: TextButton.styleFrom(
                  backgroundColor: Color(0xffE7EFEC),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                ),
                child: Text(
                  "Skip",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),

          Expanded(child: PageView.builder(
              itemBuilder:
          )
          ),

          Row(mainAxisAlignment: MainAxisAlignment.center, children: []),

          SizedBox(
            height: 48,
            width: 126,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff0F5F3E),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(37),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Next",
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(width: 9),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Color(0xffFFFFFF),
                    size: 16,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

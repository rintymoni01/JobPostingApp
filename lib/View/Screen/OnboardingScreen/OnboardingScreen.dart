import 'package:flutter/material.dart';

class Onboardingscreen extends StatefulWidget {
  const Onboardingscreen({super.key});

  @override
  State<Onboardingscreen> createState() => _OnboardingscreenState();
}

class _OnboardingscreenState extends State<Onboardingscreen> {
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
                )
              ),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Next",
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(width: 9,),
                  Icon(Icons.arrow_forward_ios_rounded,color: Color(0xffFFFFFF), size: 16,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

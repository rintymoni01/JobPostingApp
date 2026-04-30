import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jobpostingapp/Utils/AppImg/app_img.dart';
import 'package:jobpostingapp/View/Screen/OnboardingScreen/OnBoardingPage.dart';
import 'package:jobpostingapp/View/Screen/OnboardingScreen/OnBodingModdel.dart';

import '../Sign_In/sign_in_screen.dart';

class Onboardingscreen extends StatefulWidget {
  const Onboardingscreen({super.key});

  @override
  State<Onboardingscreen> createState() => _OnboardingscreenState();
}

class _OnboardingscreenState extends State<Onboardingscreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List < Onbodingmoddel> _pages = [
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
                onPressed: () {
                  Get.offAll(()=> SignInScreen());
                },

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

          Expanded(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              itemCount: _pages.length,
              itemBuilder: ((context, index) {
                return Onboardingpage(data: _pages[index]);
              }),
            ),
          ),

          Row(
              mainAxisAlignment: MainAxisAlignment.center, 
              children:  List.generate(
                  _pages.length,
                  (index) => AnimatedContainer(duration: Duration(milliseconds: 300),
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    height: 8,
                    width: _currentPage == index? 24:8,
                    decoration: BoxDecoration(
                      color: _currentPage == index ? Color(0xff0F5F3E):Color(0xFFD9D9D9),
                      borderRadius: BorderRadius.circular(4)
                    ),
                    
                  )
                
              )
          ),
          SizedBox(height: 24,),

          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: SizedBox(
              height: 48,
              width: 126,
              child: ElevatedButton(
                onPressed: () {
                  if (
                  _currentPage < _pages.length-1) {
                   _pageController.nextPage(
                       duration: Duration(milliseconds: 300),
                       curve: Curves.easeInOut,
                   );
                  }
                  else {
                    Get.offAll(()=> SignInScreen());
                  }
                  },
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
          ),
        ],
      ),
    );
  }
}

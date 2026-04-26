import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:jobpostingapp/Utils/AppIcons/app_icons.dart';

import '../OnboardingScreen/OnboardingScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Get.offAll(() => const Onboardingscreen());
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(



      backgroundColor: Color(0xff0F5F3E),
      body:
      Center(
        child: Column( mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AppIcons.AppLogo ,height: 266,width: 261,)
          ],
        ),
      )
      ,
    );
  }
}

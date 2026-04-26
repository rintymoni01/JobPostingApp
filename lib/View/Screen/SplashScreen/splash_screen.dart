import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobpostingapp/Utils/AppIcons/app_icons.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {



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

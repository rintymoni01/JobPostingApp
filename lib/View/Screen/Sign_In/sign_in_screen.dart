import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: 

        Padding(
          padding: const EdgeInsets.only(left: 16,top: 50),
          child: Column( crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Text(
               "Create account",
               style: TextStyle(
                   color: Color(0xff101828),
                   fontSize: 24,
                   fontWeight: FontWeight.w600),
             ),
              SizedBox(height: 7,),
              Text(
                "Get started as a professional",
                style: TextStyle(
                  color: Color(0xff4A5565),
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
             SizedBox(height: 34,),
             Row( mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text(
                   "Sign in",
                   style: TextStyle(
                     color: Color(0xff101828),
                     fontWeight: FontWeight.w600,
                     fontSize: 16,
                   ),
                 ),
                 SizedBox(width: 64,),
                 Text(
                   "Create account",
                   style: TextStyle(
                     color: Color(0xff6A7282),
                     fontWeight: FontWeight.w400,
                     fontSize: 16,
                   ),
                 ),
               ],
             )
            ],
          ),
        ),

    );
  }
}

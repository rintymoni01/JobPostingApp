import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:jobpostingapp/View/Widgegt/CustomBottom.dart';
import 'package:jobpostingapp/View/Widgegt/Custom_TextField.dart';

import 'SignInController.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final SignInController controller = Get.put(SignInController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, top: 50, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome Back",
              style: TextStyle(
                color: Color(0xff101828),
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 7),
            Text(
              "Enter your details to sign in",
              style: TextStyle(
                color: Color(0xff4A5565),
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 34),

            Center(
              child: Text(
                "Sign In",
                style: TextStyle(
                  color: Color(0xff101828),
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 32),

            // CustomTextField(
            //
            //
            //     hintText: "your@email.com",
            // )
            CustomTextField(
              'Email',
              controller.signInEmail,
              hintText: "your@email.com",
            ),

            SizedBox(height: 16),

            CustomTextField(
              'Password',
              obscure: true,
              controller.signInPassword,
              hintText: 'Enter your password',
            ),

            SizedBox(height: 32),

            CustomBottom(onTap: () {}, text: "Sign In"),

            SizedBox(height: 16),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 14,
                      color: const Color(0xFF1B5E3F),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20,),
            Center(
              child: termsText(),
            )

          ],
        ),
      ),
    );
  }
}

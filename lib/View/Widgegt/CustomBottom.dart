
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget CustomBottom({
  required VoidCallback onTap,
  String text = 'Continue',
  IconData? icon,
}) {
  return SizedBox(
    height: 48,
    width: double.infinity,
    child: ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF1B5E3F),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 0,
      ),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null) ...[
            Icon(icon, color: Colors.white, size: 20),
            SizedBox(width: 8),
          ],
          Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget termsText() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 24),
    child: RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'By continuing you agree to our ',
        style: TextStyle(
          color: Colors.grey[600],
          fontSize: 12,
          fontFamily: 'Roboto', // Default font
        ),
        children: [
          TextSpan(
            text: 'Terms & Conditions',
            style: TextStyle(
              color: Colors.blue[700],
              fontWeight: FontWeight.w700,
            ),
          ),
          const TextSpan(text: ' and\n'),
          TextSpan(
            text: 'Privacy Policy',
            style: TextStyle(
              color: Colors.blue[700],
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    ),
  );
}
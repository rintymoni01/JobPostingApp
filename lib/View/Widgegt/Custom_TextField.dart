import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget CustomTextField(
  String label,
  TextEditingController controller, {
  bool obscure = false,
  bool readOnly = false,
  VoidCallback? onTab,
  String? hintText,
}) {
  return Column(
    children: [
      if (label.isEmpty) ...[
        Text(
          label,
          style: TextStyle(
            color: Color(0xff111827),
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),

        SizedBox(height: 8),
      ],

      TextField(
        controller: controller,
        obscureText: obscure,
        readOnly: readOnly,
        onTap: onTab,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xff6B7280),
          ),
          filled: true,
          fillColor: Color(0xffFFFFFF),
          isDense: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.grey[200]!),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Color(0xFF1B5E3F)),
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        ),
      ),
    ],
  );
}

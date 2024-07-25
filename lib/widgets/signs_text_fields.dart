import 'package:flutter/material.dart';

class SignsTextFields extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final bool obscureText;
  const SignsTextFields({super.key,
    required this.controller,
    required this.hint,
    required this.obscureText
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.grey.shade200
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.grey.shade200
            ),
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
          hintText: hint,
          hintStyle: TextStyle(
              color: Colors.grey.shade500
          )
      ),

    );
  }
}

import 'package:flutter/material.dart';
import 'package:onboarding/constants/constants.dart';

class CustomInputField extends StatelessWidget {
  final String label;
  final IconData prefixIcon;
  final bool obscureText;

  const CustomInputField({
    super.key,
    required this.label,
    required this.prefixIcon,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(paddingM),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black.withValues(alpha: 0.12)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black.withValues(alpha: 0.12)),
        ),
        hintText: label,
        hintStyle: TextStyle(
          color: Colors.black.withValues(alpha: 0.5),
          fontWeight: FontWeight.w500,
        ),
        prefixIcon: Icon(prefixIcon, color: Colors.black.withValues(alpha: 0.5)),
      ),
      obscureText: obscureText,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:scube_app_task/shared/widgets/app_input_decoration.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final bool obscure;
  final Widget? suffixIcon;

  const CustomTextField({
    super.key,
    required this.hint,
    required this.controller,
    this.obscure = false,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscure,
      decoration: AppInputDecorations.rounded(
        hintText: hint,
        suffixIcon: suffixIcon,
      ),
    );
  }
}

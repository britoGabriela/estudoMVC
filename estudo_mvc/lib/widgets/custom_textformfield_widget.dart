import 'package:flutter/material.dart';

class CustomTextFormFieldWidget extends StatelessWidget {
  final bool isObscure;
  final String label;
  final Function(String) onChanged;

  const CustomTextFormFieldWidget({
    super.key,
    this.isObscure = false,
    required this.label,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscure,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(
          color: Color(0xFF87B322),
          fontSize: 16,
        ),
        contentPadding: const EdgeInsets.only(
          left: 20,
          top: 12,
          right: 20,
          bottom: 12,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(color: Color(0xFF6FA5D2)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(color: Color(0xFF6FA5D2)),
        ),
      ),
      onChanged: onChanged,
    );
  }
}

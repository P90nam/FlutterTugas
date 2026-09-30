import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final String myHint;
  final TextEditingController txtController;
  final double radius;
  final IconData? icon;
  final bool isPassword;

  const MyTextfield({
    super.key,
    required this.myHint,
    required this.txtController,
    required this.radius,
    this.icon,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: isPassword ? TextInputType.visiblePassword : TextInputType.text,
      controller: txtController,
      obscureText: isPassword,
      style: const TextStyle(color: Colors.white, fontSize: 15),
      decoration: InputDecoration(
        hintText: myHint,
        hintStyle: const TextStyle(color: Color(0xFFB0B0B0)),
        prefixIcon: icon == null
            ? null
            : Icon(icon, color: const Color(0xFFB0B0B0)),
        filled: true,
        fillColor: const Color(0xFF1E1E1E),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: const BorderSide(color: Color(0xFF2F2F2F)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: const BorderSide(color: Colors.red, width: 1.5),
        ),
      ),
    );
  }
}

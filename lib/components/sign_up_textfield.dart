import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegisterTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final int maxLength;
  final TextInputType keyboardType;

  const RegisterTextField({
    Key? key,
    required this.hintText,
    required this.obscureText,
    required this.maxLength,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0),
      child: TextField(
        obscureText: obscureText,
        keyboardType: keyboardType,
        inputFormatters: keyboardType == TextInputType.phone
            ? [
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(maxLength),
              ]
            : null,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(50)),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          fillColor: const Color.fromARGB(255, 255, 255, 255),
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[500]),
        ),
      ),
    );
  }
}

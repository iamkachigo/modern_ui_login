import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final String hintText;
  final controller;
  final bool obscureText;
  final icon;

  const MyTextfield({
    super.key,
    required this.hintText,
    required this.controller,
    required this.obscureText, 
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
           controller: controller,
          decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
        ),
        fillColor: Colors.grey[200],
        filled: true,
        hintText: hintText,
        prefixIcon: Icon(icon),
      )),
    );
  }
}

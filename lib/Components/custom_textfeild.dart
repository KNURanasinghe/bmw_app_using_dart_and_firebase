// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  TextEditingController controller = TextEditingController();
  bool ispassword;
  String text;
  IconData prefix;
  CustomTextField({
    required this.controller,
    required this.text,
    required this.prefix,
    this.ispassword = false,
    super.key,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isObscure = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: widget.controller,
        obscureText: isObscure,
        decoration: InputDecoration(
            border: const OutlineInputBorder(),
            label: Text(widget.text),
            prefixIcon:  Icon(widget.prefix),
            suffixIcon: widget.ispassword == true
                ? GestureDetector(
                    onTap: () {
                      setState(() {
                        isObscure = !isObscure;
                      });
                    },
                    child:  Icon(isObscure ? Icons.visibility:Icons.visibility_off))
                : null),
      ),
    );
  }
}

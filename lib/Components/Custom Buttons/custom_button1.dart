// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../Customtext/custompoppin_text.dart';

class CustomButton1 extends StatelessWidget {
  final String text;
  List<Color> colors;
  VoidCallback ontap;
  CustomButton1({
    required this.text,
    required this.colors,
    required this.ontap,
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: size.width * 0.8,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                colors: colors,
              )),
          child: Center(
              child: CustomPoppinsText(
            text: text,
            color: Colors.white,
            fontsize: 16,
          )),
        ),
      ),
    );
  }
}

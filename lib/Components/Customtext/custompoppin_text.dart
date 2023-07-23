import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomPoppinsText extends StatelessWidget {
  final String text;
  final double fontsize;
  final FontWeight fweight;
  final Color color;
  final TextOverflow textoverflow;
  const CustomPoppinsText({
    required this.text,
    this.fontsize = 24,
    this.fweight = FontWeight.w500,
    this.color = Colors.black,
    this.textoverflow = TextOverflow.visible,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: fontsize,
        fontWeight: fweight,
        color: color,
      ),
      overflow: textoverflow,
    );
  }
}

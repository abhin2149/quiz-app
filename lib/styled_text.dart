import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.label, this.textSize, {super.key});

  final String label;
  final double textSize;

  @override
  Widget build(context) {
    return Text(
      label,
      style: GoogleFonts.lato(
        color: Colors.white,
        fontSize: textSize,
      ),
      textAlign: TextAlign.center,
    );
  }
}

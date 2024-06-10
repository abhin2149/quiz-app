import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.label, this.textSize, {super.key});

  final String label;
  final double textSize;

  @override
  Widget build(context) {
    return Text(
      label,
      style: TextStyle(
        color: Colors.white,
        fontSize: textSize,
      ),
    );
  }
}

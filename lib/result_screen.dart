import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.answers, {super.key});

  final List<String> answers;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...answers.map((ans) {
            return StyledText(ans, 18);
          })
        ],
      ),
    );
  }
}

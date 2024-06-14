import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/styled_text.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const StyledText('Question', 15),
          const SizedBox(height: 50),
          AnswerButton('Option 1', () => {}),
          AnswerButton('Option 2', () => {}),
          AnswerButton('Option 3', () => {}),
          AnswerButton('Option 4',() => {}),
        ],
      )
    );
  }
}

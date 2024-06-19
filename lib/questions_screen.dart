import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var quesIndex = 0;

  void onClick() {
    setState(() {
      quesIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQues = questions[quesIndex];
    return Container(
      margin: const EdgeInsets.all(40),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currentQues.text,
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 50),
          ...currentQues.getShuffledAnswers().map((ans) {
            return AnswerButton(ans, onClick);
          })
        ],
      )),
    );
  }
}

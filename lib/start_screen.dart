import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 280,
            color: const Color.fromARGB(120, 255, 255, 255),
          ),
          // Opacity(
          //   opacity: 0.7,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     width: 280,
          //   ),
          // ),
          const SizedBox(
            height: 60,
          ),
          const StyledText(
            "Learn Flutter the fun way!",
            20,
          ),
          const SizedBox(
            height: 40,
          ),
          OutlinedButton.icon(
            onPressed: () => startQuiz(),
            icon: const Icon(Icons.arrow_right_alt_sharp),
            label: const StyledText(
              "Start Quiz",
              15,
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:quiz_app/styled_text.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 3, 34, 102),
            Color.fromARGB(255, 75, 20, 138)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 280,
            ),
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
            CupertinoButton.filled(
              onPressed: () => {},
              child: const StyledText(
                "Start Quiz",
                15,
              ),
            )
          ],
        ),
      ),
    );
  }
}

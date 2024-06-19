import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  String activeScreen = 'start-screen';
  List<String> selectedAns = [];

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAns(String ans) {
    selectedAns.add(ans);
    if (selectedAns.length == questions.length) {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  Widget getCurrentScreen(String activeScreen) {
    switch (activeScreen) {
      case 'start-screen':
        return StartScreen(switchScreen);
      case 'questions-screen':
        return  QuestionsScreen(chooseAns);
      case 'result-screen':
        return  ResultScreen(selectedAns);
      default:
        return StartScreen(switchScreen);
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = getCurrentScreen(activeScreen);
    
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 14, 24, 117),
                Color.fromARGB(255, 75, 20, 138)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}

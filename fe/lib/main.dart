import 'package:fe/widgets/question_menu.dart';
import 'package:fe/widgets/question_point.dart';
import 'package:fe/widgets/question_top.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 100),
          child: Column(
            children: [
              QuestionTop(),
              SizedBox(height: 24),
              QuestionPoint(),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  QuestionMenu(name: "데일리 질문", isClicked: false),
                  QuestionMenu(name: "자율 질문", isClicked: false),
                  QuestionMenu(name: "출석 체크", isClicked: true),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}

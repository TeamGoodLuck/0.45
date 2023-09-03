import 'package:fe/widgets/question_history_card.dart';
import 'package:fe/widgets/question_menu.dart';
import 'package:flutter/material.dart';

class QuestionHistory extends StatelessWidget {
  const QuestionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "질문 히스토리",
          style: TextStyle(
            color: Color(0XFF1A1A1A),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                QuestionMenu(name: '데일리 질문', isClicked: true),
                SizedBox(width: 12),
                QuestionMenu(name: '자율 질문', isClicked: true),
              ],
            ),
            Icon(
              Icons.filter_alt_outlined,
              color: Color(0xff374957),
              size: 24,
            )
          ],
        ),
        SizedBox(height: 24),
        QuestionHistoryCard(answer: true, type: true),
      ],
    );
  }
}

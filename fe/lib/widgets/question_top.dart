import 'package:flutter/material.dart';

class QuestionTop extends StatelessWidget {
  const QuestionTop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "포인트",
          style: TextStyle(
            color: Color(0XFFFF7482),
            fontSize: 34,
            fontWeight: FontWeight.bold,
          ),
        ),
        Icon(
          Icons.history,
          color: Color(0xff374957),
          size: 24,
        )
      ],
    );
  }
}

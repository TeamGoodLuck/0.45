import 'package:flutter/material.dart';

class QuestionPoint extends StatelessWidget {
  const QuestionPoint({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color(0XFFFF7482).withOpacity(0.2),
            spreadRadius: 0,
            blurRadius: 20,
            offset: const Offset(0, 10), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 40,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "현재 포인트",
              style: TextStyle(
                color: Color(0XFF1a1a1a),
                fontSize: 16,
              ),
            ),
            Text(
              "4,560P",
              style: TextStyle(
                color: Color(0XFF1a1a1a),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

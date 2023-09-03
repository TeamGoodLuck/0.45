import 'package:flutter/material.dart';

class QuestionMenu extends StatelessWidget {
  final String name;
  final bool isClicked;

  const QuestionMenu({
    super.key,
    required this.name,
    required this.isClicked,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isClicked ? const Color(0XFFFF7482) : Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color(0XFFFF7482).withOpacity(0.2),
            spreadRadius: 0,
            blurRadius: 10,
            offset: const Offset(0, 10), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(45),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 28,
        ),
        child: Text(
          name,
          style: TextStyle(
            color: isClicked ? Colors.white : const Color(0XFF1a1a1a),
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}

import 'package:fe/widgets/main_btn.dart';
import 'package:flutter/material.dart';

class Attendance extends StatelessWidget {
  const Attendance({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "출석 체크",
          style: TextStyle(
            color: Color(0XFF1a1a1a),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Text(
          "애인과 출석체크로 포인트를 쌓아보세요!",
          style: TextStyle(
            color: Color(0XFFABABAB),
            fontSize: 16,
          ),
        ),
        SizedBox(height: 40),
        SizedBox(height: 40),
        Btn(color: Color(0XFFFF7482), name: '출석 체크 하기')
      ],
    );
  }
}

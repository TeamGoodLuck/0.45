import 'package:fe/widgets/main_btn.dart';
import 'package:flutter/material.dart';

class FreeQuestionHome extends StatelessWidget {
  const FreeQuestionHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Text(
              "자율 질문",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Color(0XFF1a1a1a),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 10),
            Icon(
              Icons.info_outline,
              color: Color(0xffA8A8A8),
              size: 24,
            )
          ],
        ),
        const SizedBox(height: 8),
        const Row(
          children: [
            Text(
              "연인이 만든 질문에 대한 답을 해보고, \n 연인의 답과 비교해보세요:) \n 포인트 적립은 하루에 1문제까지 적립됩니다.",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Color(0xffA8A8A8),
                fontSize: 12,
              ),
            ),
          ],
        ),
        const SizedBox(height: 40),
        const Btn(color: Color(0xff374957), name: '이전 자율 질문 보기'),
        const SizedBox(height: 24),
        const Divider(
          thickness: 1,
          height: 1,
          color: Color(0xffD9D9D9),
        ),
        const SizedBox(height: 24),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: const Color(0XFFFF7482).withOpacity(0.2),
                spreadRadius: 0,
                blurRadius: 10,
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
            child: Text(
              "퀘스트 질문",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0XFF1a1a1a),
                fontSize: 12,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

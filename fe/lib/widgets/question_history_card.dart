import 'package:flutter/material.dart';

class QuestionHistoryCard extends StatelessWidget {
  final bool answer; // true : 정답, false : 오답
  final bool type; // true : 자율, false : daily

  const QuestionHistoryCard({
    super.key,
    required this.type,
    required this.answer,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 24,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 64,
                    decoration: BoxDecoration(
                      color: const Color(0XFFFDD5D9),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        // horizontal: 5,
                      ),
                      child: Text(
                        type ? '자율' : '데일리',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Color(0XFFFF7482),
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  if (type)
                    Container(
                      width: 64,
                      decoration: BoxDecoration(
                        color: answer
                            ? const Color(0XFFCEE3FF)
                            : const Color(0XFFABABAB),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                          // horizontal: 5,
                        ),
                        child: Text(
                          answer ? '정답' : '오답',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color:
                                answer ? const Color(0XFF76B0FF) : Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    children: [
                      Text(
                        'Q. 퀘스트 질문 입니다. ',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Color(0XFF1A1A1A),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.access_time_rounded,
                            color: Color(0xffABABAB),
                            size: 12,
                          ),
                          SizedBox(width: 4),
                          Text(
                            '2023.08.09.화요일',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Color(0xffABABAB),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0XFFFF7482),
                      borderRadius: BorderRadius.circular(45),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 28,
                      ),
                      child: Text(
                        '질문 보기',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          )),
    );
  }
}

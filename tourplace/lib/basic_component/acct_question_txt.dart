import 'package:flutter/material.dart';
import 'package:tourplace/constants/colors.dart';

class QuestionText extends StatelessWidget {
  const QuestionText({
    Key? key,
    required this.question,
    required this.answer,
    this.onTap,
  }) : super(key: key);

  final String question;
  final String answer;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          question,
          style: TextStyle(
              color: Colors.black45, fontSize: 14, fontWeight: FontWeight.w400),
        ),
        GestureDetector(
          onTap:  onTap,
          child: Text(
            answer,
            style: TextStyle(
                color: kBackground, fontSize: 16, fontWeight: FontWeight.w600),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tourplace/constants/colors.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({
    Key? key,
    required this.text,
    this.onTap,
  }) : super(key: key);

  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 60,
        decoration: BoxDecoration(
            color: kBackground,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: kWhite, fontSize: 19, fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}

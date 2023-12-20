import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourplace/constants/colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.title,
    required this.actionTitle,
  }) : super(key: key);

  final String title;
  final String actionTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Text(title,
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    height: 1.5,
                    letterSpacing: 0,
                    fontSize: 20)),
          ),
          Container(
            width: 55.w,
            height: 25.h,
            decoration: BoxDecoration(
                border: Border.all(
                    width: 1, color: kBackground, style: BorderStyle.solid),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Center(
              child: Text(
                actionTitle,
                style: TextStyle(color: kBackground, fontSize: 12),
              ),
            ),
          )
        ],
      ),
    );
  }
}

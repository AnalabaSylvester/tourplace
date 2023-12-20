import 'package:flutter/material.dart';
import 'package:tourplace/constants/colors.dart';

class FAceBookBtn extends StatelessWidget {
  const FAceBookBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          border: Border.all(
              width: 1, color: Colors.grey, style: BorderStyle.solid)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/ri_facebook-fill.png"),
          SizedBox(width: 20),
          Text("Continue with Facebook",
              textAlign: TextAlign.start,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  height: 1.5,
                  letterSpacing: 0,
                  fontSize: 16)),
        ],
      ),
    );
  }
}

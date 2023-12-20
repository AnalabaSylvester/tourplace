import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/colors.dart';

class CategoryOption extends StatelessWidget {
  const CategoryOption({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Container(
              height: 80,
              width: 70,
              decoration: BoxDecoration(
                  color: kWhite,
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(255, 247, 246, 246),
                        blurRadius: 5,
                        offset: Offset(0, 5))
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      image,
                      width: 20,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      text,
                      style: TextStyle(color: Colors.black, fontSize: 9),
                    )
                  ],
                ),
              )),
        )
      ],
    );
  }
}

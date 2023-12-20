import 'package:flutter/material.dart';
import 'package:tourplace/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryAppBar extends StatelessWidget {
  const PrimaryAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;
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
            padding: const EdgeInsets.only(left: 0),
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
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Center(
              child: Text(
                "",
                style: TextStyle(color: kWhite, fontSize: 12),
              ),
            ),
          )
        ],
      ),
    );
  }
}

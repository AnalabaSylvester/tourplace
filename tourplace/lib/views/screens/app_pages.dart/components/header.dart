import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/colors.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
    this.onTap,
  }) : super(key: key);

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      decoration: BoxDecoration(
        color: kBackground,
        image: DecorationImage(
            image: AssetImage("assets/images/bghome.jpg"), fit: BoxFit.cover),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      // color: Color.fromARGB(255, 160, 160, 159),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: GestureDetector(
                    onTap: onTap,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.menu,
                        size: 30,
                        color: kWhite,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/bghome.jpg")),
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      border: Border.all(
                          width: 1.5, style: BorderStyle.solid, color: kWhite)),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/images/logo_one.png",
              width: 200,
            )
          ],
        ),
      ),
    );
  }
}

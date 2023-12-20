import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';

class MostVisitedWidget extends StatelessWidget {
  const MostVisitedWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.text,
  }) : super(key: key);

  final String image;
  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Container(
        width: 200,
        height: 160,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            image: DecorationImage(
                image: AssetImage(
                  image,
                ),
                fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: kWhite,
                        size: 22,
                      ),
                      Text(
                        "4.6",
                        style: TextStyle(
                            color: kWhite,
                            fontSize: 17,
                            fontWeight: FontWeight.normal),
                      )
                    ],
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: kWhite,
                        borderRadius:
                            BorderRadiusDirectional.all(Radius.circular(100))),
                    child: Center(
                      child: Icon(
                        Icons.bookmark,
                        color: kBackground,
                        size: 26,
                      ),
                    ),
                  )
                ],
              ),
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: kWhite,
                        fontWeight: FontWeight.w500,
                        height: 0,
                        // letterSpacing: 0,
                        fontSize: 15),
                  ),
                  
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_pin,
                        color: kWhite,
                        size: 18,
                      ),
                      Text(
                        text,
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                color: kWhite,
                                fontWeight: FontWeight.w400,
                                height: 0,
                                // letterSpacing: 0,
                                fontSize: 10),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

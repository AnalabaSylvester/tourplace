import 'package:flutter/material.dart';
import 'package:tourplace/constants/colors.dart';

// Notification tile
class NotificationTile extends StatelessWidget {
  const NotificationTile({
    Key? key,
    required this.title,
    required this.text,
    required this.icon,
    required this.color,
    required this.timel,
    required this.date,
  }) : super(key: key);

  final String title;
  final String text;
  final IconData icon;
  final Color color;
  final String timel;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Dot container indicator (demo)
        Container(
          width: 15,
          height: 15,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(Radius.circular(100))),
        ),
        SizedBox(
          width: 15,
        ),

        // Tile Container
        Flexible(
          flex: 5,
          fit: FlexFit.loose,
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: kWhite,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(255, 247, 246, 246),
                    blurRadius: 10,
                    spreadRadius: 8,
                    offset: Offset(5, 5))
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(icon, color: kBackground, size: 30),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                  // letterSpacing: 0,
                                  fontSize: 16),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          text,
                          // overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              timel,
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300),
                            ),
                            Text(
                              date,
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

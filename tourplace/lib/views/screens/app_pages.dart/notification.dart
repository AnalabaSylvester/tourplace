import 'package:flutter/material.dart';
import 'package:tourplace/basic_component/primary_app_bar.dart';
import 'package:tourplace/views/screens/app_pages.dart/components/notification_tile.dart';

import '../../../constants/colors.dart';

class NotificationScreen extends StatefulWidget {
  static String routName = "NotificationScreen";
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: kWhite,
          automaticallyImplyLeading: false,
          title: PrimaryAppBar(title: "Notification")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              DayDate(
                text: "Today",
              ),
              const SizedBox(
                height: 20,
              ),
              NotificationTile(
                  icon: Icons.book_online_outlined,
                  color: kBackground,
                  timel: "12.00 AM",
                  date: "December 17 2023",
                  title: "Hotel Booking",
                  text:
                      "Book a comfortable hotel for you and your loved ones "),
              const SizedBox(
                height: 20,
              ),
              NotificationTile(
                  icon: Icons.book_online_outlined,
                  color: kBackground,
                  timel: "12.00 AM",
                  date: "December 17 2023",
                  title: "Flight Booking",
                  text:
                      "Book a comfortable hotel for you and your loved ones "),
              const SizedBox(
                height: 20,
              ),
              DayDate(
                text: "Yesterday",
              ),
              const SizedBox(
                height: 20,
              ),
              NotificationTile(
                  icon: Icons.book_online_outlined,
                  color: Colors.grey,
                  timel: "12.00 AM",
                  date: "December 17 2023",
                  title: "App Update",
                  text:
                      "Book a comfortable hotel for you and your loved ones "),
              const SizedBox(
                height: 20,
              ),
              NotificationTile(
                  icon: Icons.book_online_outlined,
                  color: kBackground,
                  timel: "12.00 AM",
                  date: "December 17 2023",
                  title: "Shopping",
                  text:
                      "Book a comfortable hotel for you and your loved ones "),
              const SizedBox(
                height: 20,
              ),
              NotificationTile(
                  icon: Icons.book_online_outlined,
                  color: kBackground,
                  timel: "12.00 AM",
                  date: "December 17 2023",
                  title: "Daily Schedule",
                  text:
                      "Book a comfortable hotel for you and your loved ones "),
            ],
          ),
        ),
      ),
    );
  }
}

// simple text
class DayDate extends StatelessWidget {
  const DayDate({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Text(
        text,
        style: TextStyle(
            color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w400),
      ),
    );
  }
}

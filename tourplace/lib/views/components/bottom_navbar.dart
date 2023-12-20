import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourplace/constants/colors.dart';
import 'package:tourplace/views/screens/app_pages.dart/chat.dart';
import 'package:tourplace/views/screens/app_pages.dart/home.dart';
import 'package:tourplace/views/screens/app_pages.dart/notification.dart';
import 'package:tourplace/views/screens/app_pages.dart/saved.dart';

class ButtomNavBar extends StatefulWidget {
  static String routName = "ButtomNavBar";
  const ButtomNavBar({super.key});

  @override
  State<ButtomNavBar> createState() => _ButtomNavBarState();
}

class _ButtomNavBarState extends State<ButtomNavBar> {
  int _page = 0;

  List<Widget> pages = [
    const HomeScreen(),
    const SavedScreen(),
    const NotificationScreen(),
    const ChatScreen()
  ];

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor:  const Color.fromARGB(255, 240, 245, 247),
        body: pages[_page],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _page,
            selectedItemColor: kBackground,
            unselectedItemColor: Colors.grey,
            backgroundColor: kWhite,
            iconSize: 25,
            selectedLabelStyle:
                const TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
            unselectedLabelStyle:
                const TextStyle(fontWeight: FontWeight.w800, fontSize: 12),
            elevation: 10,
            type: BottomNavigationBarType.fixed,
            onTap: updatePage,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_outline),
                label: 'Saved',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications_none,
                ),
                label: 'Notification',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.message),
                label: 'Chat',
              ),
            ]));
  }
}

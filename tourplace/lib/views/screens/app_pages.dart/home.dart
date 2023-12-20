import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tourplace/constants/colors.dart';
import 'package:tourplace/views/screens/app_pages.dart/components/header.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourplace/views/screens/app_pages.dart/components/title_tile.dart';

import 'components/categories_item.dart';
import 'components/most_visited.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: kBackground, statusBarBrightness: Brightness.light));
    return Scaffold(
      key: _scaffoldKey,

      // navDrawer
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: kBackground,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        "assets/images/logo.png",
                        width: 30,
                        height: 30,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "HOME HEAVEN",
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                color: kWhite,
                                fontWeight: FontWeight.w800,
                                height: 1,
                                letterSpacing: 4,
                                fontSize: 16),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "HASSLE EASY HOUSING!",
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                letterSpacing: 1,
                                height: 1,
                                fontSize: 10),
                      )
                    ],
                  )
                ],
              ),
            ),
            ListTile(
              title: const Text('Explore'),
              onTap: () {
                // Navigate to the home page
                // Navigator.of(context).pushNamed('/');
              },
            ),
            ListTile(
              title: const Text('Favorites or Wish List'),
              onTap: () {
                // Navigate to the about page
                // Navigator.of(context).pushNamed('/about');
              },
            ),
            ListTile(
              title: const Text('Chat'),
              onTap: () {
                // Navigate to the about page
                // Navigator.of(context).pushNamed('/about');
              },
            ),
            ListTile(
              title: const Text("Nearby Attractions"),
              onTap: () {
                // Navigate to the about page
                // Navigator.of(context).pushNamed('/about');
              },
            ),
            ListTile(
              title: const Text("About us"),
              onTap: () {
                // Navigate to the about page
                // Navigator.of(context).pushNamed('/about');
              },
            ),
          ],
        ),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  HomeHeader(
                    onTap: () {
                      _scaffoldKey.currentState?.openDrawer();
                    },
                  ),
                  const SizedBox(height: 70),
                  TitleTile(tittle: "Categories", text: "See all"),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CategoryOption(
                          image: "assets/images/mountain.png",
                          text: "Mountains",
                        ),
                        CategoryOption(
                          image: "assets/images/beach.png",
                          text: "Beach",
                        ),
                        CategoryOption(
                          image: "assets/images/likes.png",
                          text: "Likes",
                        ),
                        CategoryOption(
                          image: "assets/images/camp.png",
                          text: "Camp",
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  TitleTile(tittle: "Most Visited", text: "See all"),

                  // Catalogs
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          MostVisitedWidget(
                            image: 'assets/images/home_two.jpg',
                            title: 'London',
                            text: 'location',
                          ),
                          MostVisitedWidget(
                            image: 'assets/images/home_three.jpg',
                            title: 'London',
                            text: 'location',
                          ),
                          MostVisitedWidget(
                            image: 'assets/images/home_four.jpg',
                            title: 'London',
                            text: 'location',
                          ),
                          MostVisitedWidget(
                            image: 'assets/images/home_one.jpg',
                            title: 'London',
                            text: 'location',
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Positioned(
                  top: 170,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      decoration: BoxDecoration(
                          color: kWhite,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(255, 247, 246, 246),
                                blurRadius: 5,
                                offset: Offset(0, 5))
                          ]),
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.search_sharp,
                                color: kBackground,
                                size: 32,
                              ),
                              hintText: "Search any places..",
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

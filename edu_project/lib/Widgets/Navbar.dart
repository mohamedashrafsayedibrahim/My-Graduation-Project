import 'package:edu_project/BasicPages/HomeRecource.dart';
import 'package:edu_project/BasicPages/Home_page.dart';
import 'package:edu_project/BasicPages/courses_page.dart';
import 'package:edu_project/BasicPages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NavBar extends StatefulWidget {
  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectedTab = 0;
  final screens = [
    HomePage(),
    CoursesPage(),
    ResourcesPage(),                       
    ProfilePage(),
  ];

  Color bottonNavBgColor = Color.fromARGB(255, 6, 154, 129);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFC5D7DB),
      body: screens[selectedTab],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(120)),
        backgroundColor: Color(0xFF1D7A85),
        onPressed: () async {
          Navigator.pushNamed(context, 'ChatBot');
        },
        child: Icon(
          Icons.reddit_sharp,
          color: Colors.white,
          size: 40,
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(top: 1, bottom: 10, left: 10, right: 10),
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.15),
              blurRadius: 30,
              offset: Offset(0, 10),
            ),
          ],
          borderRadius: BorderRadius.circular(50),
        ),
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: size.width * .024),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              setState(
                () {
                  selectedTab = index;
                },
              );
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AnimatedContainer(
                  duration: Duration(milliseconds: 1500),
                  curve: Curves.fastLinearToSlowEaseIn,
                  margin: EdgeInsets.only(
                    bottom: index == selectedTab ? 0 : size.width * .029,
                    right: size.width * .0530,
                    left: size.width * .0422,
                  ),
                  width: size.width * .128,
                  height: index == selectedTab ? size.width * .014 : 0,
                  decoration: BoxDecoration(
                    color: Color(0xFF1D7A85),
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(10),
                    ),
                  ),
                ),
                Icon(
                  listOfIcons[index],
                  size: size.width * .076,
                  color:
                      index == selectedTab ? Color(0xFF1D7A85) : Colors.black38,
                ),
                SizedBox(height: size.width * .03),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<IconData> listOfIcons = [
    Icons.home_rounded,
    Icons.laptop_mac_rounded,
    Icons.menu_book_rounded,
    Icons.person_rounded,
  ];
}

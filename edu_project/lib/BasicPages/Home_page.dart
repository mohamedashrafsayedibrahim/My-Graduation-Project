import 'package:edu_project/Widgets/Custom_card.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Color Kcolor = const Color.fromARGB(255, 3, 61, 88);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // height: 770,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Color.fromARGB(255, 18, 95, 104),
              Color.fromARGB(255, 18, 95, 104),
              Color.fromARGB(255, 18, 95, 104),
              Color(0xFF1D7A85),
              Color(0xFF1D7A85),
              Color(0xFF1D7A85),
              Color(0xFFAAC3C7),
              Color(0xFFA5C1C4),
              Color(0xFFC5D7DB),
            ],
          ),
        ),
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Image.asset(
                    'assets/Images/wLogo.png',
                    width: 120,
                    height: 90,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text(
                    'Find your specific Materials here!',
                    style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'Ubuntu',
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(238, 255, 255, 255)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 60,
                  width: 365,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(73, 192, 198, 203),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60),
                      ),
                      hintText: 'Search for Materials',
                      hintStyle: const TextStyle(
                          fontFamily: 'Ubuntu',
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 255, 255)),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(right: 1, left: 10),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.search,
                              size: 27,
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.keyboard_voice_rounded,
                            size: 27,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
              ],
            ),
            SingleChildScrollView(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'Physics');
                      },
                      child: Container(
                        width: 202,
                        height: 210,
                        child: CustomCard(
                            image: 'assets/Images/e.jpeg', text: 'E-Commerce'),
                      ),
                    ),
                    Container(
                      width: 202,
                      height: 210,
                      child: CustomCard(
                          image: 'assets/Images/BigData.jpg', text: 'Big Data'),
                    ),
                    Container(
                      width: 202,
                      height: 210,
                      child: CustomCard(
                          image: 'assets/Images/DataStructure.jpg',
                          text: 'Software Testing'),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 55,
            ),
            SingleChildScrollView(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Row(
                  children: [
                    Container(
                      width: 202,
                      height: 210,
                      child: CustomCard(
                          image: 'assets/Images/Network.jpeg',
                          text: 'Network '),
                    ),
                  
                      Container(
                      width: 202,
                      height: 210,
                      child: CustomCard(
                          image: 'assets/Images/social.jpeg', text: 'Social Network'),
                    ),
                    // Container(
                    //   width: 202,
                    //   height: 210,
                    //   child: CustomCard(
                    //       image: 'assets/Images/english.jpeg', text: 'English'),
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

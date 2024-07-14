import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StartPage extends StatelessWidget {
  final Color Kcolor = Color.fromARGB(255, 3, 61, 88);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(400),
        child: Container(
          color: Color(0xFFAAC3C7),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
            child: Image.asset(
              'assets/Images/ss.jpeg',
              height: 450,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
      body: Container(
        height: 845,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Color(0xFFAAC3C7),
              Color(0xFFAAC3C7),
              Color(0xFFA5C1C4),
              Color(0xFFC5D7DB),
            ],
          ),
        ),
        child: Column(
          children: [
            Stack(
              // clipBehavior: Clip.none,
              children: [],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Welcome To',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Kcolor,
                fontFamily: 'Ubuntu',
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              'EduConnect',
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Kcolor,
                fontFamily: 'Ubuntu',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '       Your ideal gateway to all your materials\n   and resources for your Faculty of Computer\n           Science and Artificial Intelligence.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Kcolor,
                fontFamily: 'Ubuntu',
              ),
            ),
            SizedBox(
              height: 90,
            ),
            Container(
              width: 250,
              height: 60,
              decoration: BoxDecoration(
                color: Kcolor,
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'RegistrationPage');
                    },
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontFamily: 'Ubuntu',
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    size: 30,
                    color: const Color.fromARGB(255, 255, 255, 255),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

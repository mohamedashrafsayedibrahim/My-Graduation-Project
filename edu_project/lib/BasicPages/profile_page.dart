import 'package:edu_project/Widgets/Profile_list.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';


class ProfilePage extends StatefulWidget {
   ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Color(0xFF1D7A85),
              Color(0xFF1D7A85),
              Color(0xFF1D7A85),
              Color(0xFFAAC3C7),
              Color(0xFFA5C1C4),
              Color(0xFFC5D7DB),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Column(
                children: [
                  Center(
                    child: const Text(
                      "Profile",
                      style: TextStyle(
                          fontSize: 40,
                          fontFamily: 'Ubuntu',
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(238, 255, 255, 255)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  const ProfilePic(),
                  const SizedBox(height: 20),
                  ProfileMenu(
                    text: "My Account",
                    icon: "assets/Images/User Icon.svg",
                    press: () => {},
                  ),
                  ProfileMenu(
                    text: "Notifications",
                    icon: "assets/Images/Bell.svg",
                    press: () {},
                  ),
                  ProfileMenu(
                    text: "Settings",
                    icon: "assets/Images/Settings.svg",
                    press: () {},
                  ),
                  ProfileMenu(
                    text: "Help Center",
                    icon: "assets/Images/Question mark.svg",
                    press: () {},
                  ),
                  ProfileMenu(
                    text: "Log Out",
                    icon: "assets/Images/Log out.svg",
                    press: () {
                      FirebaseAuth.instance.signOut();
                      Navigator.pop(context, 'LoginPage');
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


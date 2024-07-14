// ignore_for_file: camel_case_types

import 'package:edu_project/BasicPages/SplashScreen.dart';

import 'package:edu_project/BasicPages/courses_page.dart';
import 'package:edu_project/BasicPages/AI_page.dart';
import 'package:edu_project/BasicPages/Home_page.dart';
import 'package:edu_project/BasicPages/Login_page.dart';
import 'package:edu_project/BasicPages/Registration_page.dart';
import 'package:edu_project/BasicPages/Start_page.dart';
import 'package:edu_project/BasicPages/profile_page.dart';
import 'package:edu_project/Materials_Page/First/Intro_Cs.dart';
import 'package:edu_project/Materials_Page/First/Physics.dart';
import 'package:edu_project/Materials_Page/First/Programming.dart';
import 'package:edu_project/Materials_Page/Fourth/BigData.dart';
import 'package:edu_project/Materials_Page/Fourth/Mobil.dart';
import 'package:edu_project/Materials_Page/Fourth/Network.dart';
import 'package:edu_project/Materials_Page/Second/Discrete.dart';
import 'package:edu_project/Materials_Page/Second/Foundation_IS.dart';
import 'package:edu_project/Materials_Page/Second/OOP.dart';
import 'package:edu_project/Materials_Page/Third/Algorithms.dart';
import 'package:edu_project/Materials_Page/Third/DB_Management.dart';
import 'package:edu_project/Materials_Page/Third/Software.dart';
import 'package:edu_project/ResourcesPages/First_resource.dart';
import 'package:edu_project/BasicPages/HomeRecource.dart';
import 'package:edu_project/Widgets/Navbar.dart';
import 'package:edu_project/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:device_preview/device_preview.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
  const eduConnect(),
  );
}


  // DevicePreview(
  //   enabled: !kReleaseMode,
  //   builder: (context) => eduConnect()),
class eduConnect extends StatefulWidget {
  const eduConnect({super.key});

  @override
  State<eduConnect> createState() => _eduConnectState();
}

class _eduConnectState extends State<eduConnect> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'StartPage': (context) => StartPage(),
        'HomePage': (context) => HomePage(),
        'RegistrationPage': (context) => RegistrationPage(),
        'LoginPage': (context) => LoginPage(),
        'ChatBot': (context) => const ChatBot(),
        'CoursesPage': (context) => const CoursesPage(),
        'ResourcesPage': (context) => ResourcesPage(),
        'ProfilePage': (context) =>  ProfilePage(),
        'FirstResource': (context) => const FirstResource(),
        'intro': (context) => const CS(),
        'Physics': (context) => const Physics(),
        'Programming': (context) => const Programming(),
        'Bigdata': (context) => const Bigdata(),
        'Mobile': (context) => const Mobile(),
        'Network': (context) => const Network(),
        'DS': (context) => const Discrete(),
        'Foundation': (context) => const Foundation(),
        'OOP': (context) => const OOP(),
        'Algorithm': (context) => const Algorithms(),
        'DB': (context) => const DbManagement(),
        'Software': (context) => const Software(),
        'Navbar':(context)=>NavBar(),
        'splash':(context)=>const SplashScreen(),
      

      },

      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      // home: NavBar(),
      initialRoute: 'splash',
    );
  }
}

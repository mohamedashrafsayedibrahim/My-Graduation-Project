import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override

  
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with 
  SingleTickerProviderStateMixin{
  @override
  void initState () {
    super.initState();
   

    Future.delayed(const Duration(seconds: 3), (){
      Navigator.pushNamed(context, 'StartPage');
    } );
  }
 
 

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: <Color>[
              Color.fromARGB(255, 18, 95, 104),
              Color(0xFF1D7A85),
              Color.fromARGB(255, 18, 95, 104),
              Color(0xFF1D7A85),
              Color(0xFF1D7A85),
              Color.fromARGB(255, 18, 95, 104),
              Color(0xFF1D7A85),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/Images/logo3.png'),
          ],
        ),
      ),
    );
  }
}

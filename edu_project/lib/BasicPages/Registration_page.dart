// ignore_for_file: unused_local_variable

import 'package:edu_project/Widgets/Custom_text_field.dart';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class RegistrationPage extends StatefulWidget {
  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  String? Name;
  String? Email;
  String? Password;
  String? Repassword;
  bool isLoading = false;

  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        body: Form(
          key: formKey,
          child: Container(
            height: 890,
            decoration: const BoxDecoration(
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
            child: Padding(
              padding: const EdgeInsets.only(top: 36),
              child: ListView(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Image.asset(
                          'assets/Images/logo3.png',
                          width: 220,
                          height: 150,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Center(
                        child: Text(
                          'Register Now',
                          style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'Ubuntu',
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF164863),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Container(
                          width: 390,
                          height: 470,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Color(0xFFC5D7DB),
                          ),
                          child: Column(
                            children: [
                              const Padding(
                                padding:
                                    EdgeInsets.only(right: 220, top: 10),
                                child: Text(
                                  'UserName',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontFamily: 'Ubuntu',
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF164863),
                                  ),
                                ),
                              ),
                              CtextField(
                                onChange: (data) {
                                  Name = data;
                                },
                                hintText: 'Enter your Full Name',
                                icon: const Icon(Icons.person),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 270),
                                child: Text(
                                  'Email',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontFamily: 'Ubuntu',
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF164863),
                                  ),
                                ),
                              ),
                              CtextField(
                                onChange: (data) {
                                  Email = data;
                                },
                                hintText: 'Enter your Email Address',
                                icon: const Icon(Icons.email_outlined),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 220),
                                child: Text(
                                  'Password',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontFamily: 'Ubuntu',
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF164863),
                                  ),
                                ),
                              ),
                              CtextField(
                                onChange: (data) {
                                  Password = data;
                                },
                                obscureText: true,
                                hintText: 'Enter your Password',
                                icon: const Icon(Icons.lock_outline_sharp),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 180),
                                child: Text(
                                  'Re-Password',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontFamily: 'Ubuntu',
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF164863),
                                  ),
                                ),
                              ),
                              CtextField(
                                onChange: (data) {
                                  Repassword = data;
                                },
                                obscureText: true,
                                hintText: 'Re-enter Password',
                                icon: const Icon(Icons.lock_outline_sharp),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 80,
                        ),
                        child: Container(
                          width: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: const Color(0xFF1D7A85),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: () async {
                                  if (formKey.currentState!.validate()) {
                                    isLoading = true;
                                    setState(() {});
                                    try {
                                      await registerUser();
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(const SnackBar(
                                              backgroundColor: Colors.white,
                                              content: Text(
                                                'Email Created',
                                                style: TextStyle(
                                                    color: Colors.black),
                                              )));
                                      Navigator.pushNamed(context, 'LoginPage');
                                    } on FirebaseAuthException catch (ex) {
                                      if (ex.code == 'user-not-found') {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(const SnackBar(
                                                backgroundColor: Colors.white,
                                                content: Text(
                                                    'Email already in use',
                                                    style: TextStyle(
                                                        color: Colors.black))));
                                      } else if (ex.code == 'wrong-password') {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(const SnackBar(
                                                backgroundColor: Colors.white,
                                                content: Text('Wrong Password',
                                                    style: TextStyle(
                                                        color: Colors.black))));
                                      }
                                    } catch (ex) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(const SnackBar(
                                              backgroundColor: Colors.white,
                                              content: Text(
                                                  'There was an error',
                                                  style: TextStyle(
                                                      color: Colors.black))));
                                    }
                                    isLoading = false;
                                    setState(() {});
                                  } else {}
                                },
                                child: const Text(
                                  'Register',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontFamily: 'Ubuntu',
                                      fontWeight: FontWeight.bold,
                                      color:
                                          Color.fromARGB(255, 251, 253, 253)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Already have an account?  ',
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'static',
                                color: Color(0xFF1D7A85)),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, 'LoginPage');
                            },
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                  fontSize: 17,
                                  fontFamily: 'static',
                                  decoration: TextDecoration.underline,
                                  decorationThickness: 1,
                                  color: Color(0xFF1D7A85)),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> registerUser() async {
    UserCredential user = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: Email!, password: Password!);
  }
}

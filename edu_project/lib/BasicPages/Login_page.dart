// ignore_for_file: unused_local_variable

import 'package:edu_project/Widgets/Custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? Email;
  String? Password;
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
            height: 900,
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
                        height: 20,
                      ),
                      const Center(
                        child: Text(
                          'Login Now',
                          style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'Ubuntu',
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF164863),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Container(
                          width: 390,
                          height: 290,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Color(0xFFC5D7DB),
                          ),
                          child: Column(
                            children: [
                              const Padding(
                                padding:
                                    EdgeInsets.only(right: 280, top: 25),
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
                                hintText: 'Enter your email',
                                icon: const Icon(Icons.email_outlined),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 230),
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
                                hintText: 'Enter your password',
                                icon: const Icon(Icons.key_outlined),
                              ),
                             
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 90,
                        ),
                        child: Container(
                          width: 230,
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
                                      await loginUser();
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(const SnackBar(
                                              content: Text('Welcome Student')));
                                      Navigator.pushNamed(context, 'Navbar');
                                    } on FirebaseAuthException catch (ex) {
                                      if (ex.code == 'user-not-found') {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(const SnackBar(
                                                content:
                                                    Text('Email is wrong')));
                                      } else if (ex.code == 'wrong-password') {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(const SnackBar(
                                                content:
                                                    Text('Wrong Password')));
                                      }
                                    } 
                                    catch (ex) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(const SnackBar(
                                              content:
                                                  Text('There was an error')));
                                    }
                                    isLoading = false;
                                    setState(() {});
                                  } else {}
                                },
                                child: const Text(
                                  'Login',
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
                            'Don\'t have an account?  ',
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'static',
                                color: Color(0xFF1D7A85)),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Text(
                              'Register',
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

  Future<void> loginUser() async {
    UserCredential user = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: Email!, password: Password!);
  }
}

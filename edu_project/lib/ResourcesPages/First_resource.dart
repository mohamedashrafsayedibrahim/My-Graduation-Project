// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../Widgets/Resource_card.dart';

class FirstResource extends StatelessWidget {
  const FirstResource({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Colors.lightBlue.shade50,
                  Colors.lightBlue.shade50,
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 10),
                // Resources List
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'Programming');
                  },
                  child: ResourceCard(
                    subject: 'Programming 1',
                    doctor: 'Dr /Esraa El Hariri',
                    pdf: '5 PDF',
                    video: '5 Video',
                    image: 'assets/Images/temp.jpeg',icon1: Icon(Icons.add_box_outlined),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'intro');
                  },
                  child: ResourceCard(
                    subject: 'Intro to CS',
                    doctor: 'Dr /Mostafa Rabea ',
                    pdf: '5 PDF',
                    video: '5 Video',
                    image: 'assets/Images/OOP.jpg',icon1: Icon(Icons.add_box_outlined),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'Physics');
                  },
                  child: ResourceCard(
                    subject: 'Physics 1',
                    doctor: 'Dr /Engy Ragaai',
                    pdf: '4 PDF',
                    video: '4 Video',
                    image: 'assets/Images/phys1.jpeg',icon1: Icon(Icons.add_box_outlined),
                  ),
                ),
                ResourceCard(
                  subject: 'English',
                  doctor: 'Dr /Mohamed Hassan Ibrahim',
                  pdf: '1 PDF',
                  video: '0 Video',
                  image: 'assets/Images/english.jpeg',icon1: Icon(Icons.add_box_outlined),
                ),
                ResourceCard(
                  subject: 'Electronics',
                  doctor: 'Dr /Engy Ragaai',
                  pdf: '7 PDF',
                  video: '7 Video',
                  image: 'assets/Images/BigData.jpg',icon1: Icon(Icons.add_box_outlined),
                ),
                ResourceCard(
                  subject: 'Math 1',
                  doctor: 'Dr /Heba Nagaty',
                  pdf: '1 PDF',
                  video: '0 Video',
                  image: 'assets/Images/math.jpeg',icon1: Icon(Icons.add_box_outlined),
                ),

                ResourceCard(
                  subject: 'Scientific Writing',
                  doctor: 'Dr /Masoud Esmail',
                  pdf: '1 PDF',
                  video: '0 Video',
                  image: 'assets/Images/SW.jpg',icon1: Icon(Icons.add_box_outlined),
                ),
                ResourceCard(
                  subject: 'Computing Economics',
                  doctor: 'Dr /Fawzya Ramadan',
                  pdf: '6 PDF',
                  video: '6 Video',
                  image: 'assets/Images/BA.jpg',icon1: Icon(Icons.add_box_outlined),
                ),
                ResourceCard(
                  subject: 'Human Rights',
                  doctor: 'Dr /Mohamed Hassan Farag',
                  pdf: '3 PDF',
                  video: '3 Video',
                  image: 'assets/Images/SW.jpg',
                ),
                ResourceCard(
                  subject: 'Logig Gates',
                  doctor: 'Dr /Eslam El Maghraby',
                  pdf: '8 PDF',
                  video: '8 Video',
                  image: 'assets/Images/BigData.jpg',
                ),
                ResourceCard(
                  subject: 'Problem Solving',
                  doctor: 'Dr /Mary Monir',
                  pdf: '6 PDF',
                  video: '6 Video',
                  image: 'assets/Images/temp.jpeg',
                ),
                ResourceCard(
                  subject: 'Programming 2',
                  doctor: 'Dr /Esraa El Hariri',
                  pdf: '6 PDF',
                  video: '6 Video',
                  image: 'assets/Images/prog1.jpeg',
                ),
                ResourceCard(
                  subject: 'Physics 2',
                  doctor: 'Dr /Hany Elsharkawy',
                  pdf: '9 PDF',
                  video: '9 Video',
                  image: 'assets/Images/phys1.jpeg',
                ),
                ResourceCard(
                  subject: 'English 2',
                  doctor: 'Dr /Mohamed Hassan Ibrahim',
                  pdf: '1 PDF',
                  video: '0 Video',
                  image: 'assets/Images/english.jpeg',
                ),
                ResourceCard(
                  subject: 'Math 2',
                  doctor: 'Dr /Heba Nagaty',
                  pdf: '4 PDF',
                  video: '4 Video',
                  image: 'assets/Images/math.jpeg',
                ),
                const SizedBox(height: 70),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

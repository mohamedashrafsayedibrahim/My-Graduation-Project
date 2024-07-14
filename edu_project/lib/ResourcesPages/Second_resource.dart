import 'package:flutter/material.dart';
import '../Widgets/Resource_card.dart';
class SecondResource extends StatelessWidget {
  const SecondResource({super.key});

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
                    Navigator.pushNamed(context, 'Foundation');
                  },
                  child: ResourceCard(
                    subject: 'Foundation of IS',
                    doctor: 'Dr /Mohamed Hassan Farag',
                    pdf: '1 PDF',
                    video: '0 Video',
                    image: 'assets/Images/prog1.jpeg',icon1: Icon(Icons.add_box_outlined),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'DS');
                  },
                  child: ResourceCard(
                    subject: 'Discrete Structure',
                    doctor: 'Dr /Eslam Eid ',
                    pdf: '7 PDF',
                    video: '7 Video',
                    image: 'assets/Images/DataStructure.jpg',icon1: Icon(Icons.add_box_outlined),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'OOP');
                  },
                  child: ResourceCard(
                    subject: 'OOP',
                    doctor: 'Dr /Fawzya Ramdan',
                    pdf: '7 PDF',
                    video: '7 Video',
                    image: 'assets/Images/OOP.jpg',icon1: Icon(Icons.add_box_outlined),
                  ),
                ),
                ResourceCard(
                  subject: 'Professional Ethics',
                  doctor: 'Dr /Heba Nabil',
                  pdf: '8 PDF',
                  video: '8 Video',
                  image: 'assets/Images/SW.jpg',icon1: Icon(Icons.add_box_outlined),
                ),
                ResourceCard(
                  subject: 'Math 3',
                  doctor: 'Dr /Heba Nagaty',
                  pdf: '4 PDF',
                  video: '4 Video',
                  image: 'assets/Images/math.jpeg',icon1: Icon(Icons.add_box_outlined),
                ),
                ResourceCard(
                  subject: 'DSP',
                  doctor: 'Dr /May Monir',
                  pdf: '8 PDF',
                  video: '8 Video',
                  image: 'assets/Images/BigData.jpg',icon1: Icon(Icons.add_box_outlined),
                ),
                ResourceCard(
                  subject: 'Modern Management',
                  doctor: 'Dr /Heba Nabil',
                  pdf: '8 PDF',
                  video: '8 Video',
                  image: 'assets/Images/BA.jpg',icon1: Icon(Icons.add_box_outlined),
                ),
                ResourceCard(
                  subject: 'File Organization',
                  doctor: 'Dr /Esraa Raslan',
                  pdf: '8 PDF',
                  video: '8 Video',
                  image: 'assets/Images/Database.jpg',icon1: Icon(Icons.add_box_outlined),
                ),
                ResourceCard(
                  subject: 'Probability and Statistics',
                  doctor: 'Dr /Engy Ragaai',
                  pdf: '7 PDF',
                  video: '7 Video',
                  image: 'assets/Images/phys1.jpeg',icon1: Icon(Icons.add_box_outlined),
                ),
                ResourceCard(
                  subject: 'Project Management',
                  doctor: 'Dr /Asmaa Hashem',
                  pdf: '3 PDF',
                  video: '3 Video',
                  image: 'assets/Images/english.jpeg',
                ),
                ResourceCard(
                  subject: 'System Analysis',
                  doctor: 'Dr /Rasha El Badry',
                  pdf: '5 PDF',
                  video: '5 Video',
                  image: 'assets/Images/BA.jpg',
                ),
                ResourceCard(
                  subject: 'Data Structure',
                  doctor: 'Dr /Shereen Ahmed',
                  pdf: '8 PDF',
                  video: '8 Video',
                  image: 'assets/Images/DataStructure.jpg',
                ),
                ResourceCard(
                  subject: 'Operation Research',
                  doctor: 'Dr /Engy Ragaai',
                  pdf: '4 PDF',
                  video: '4 Video',
                  image: 'assets/Images/math.jpeg',
                ),
                ResourceCard(
                  subject: 'Entrepreneurship',
                  doctor: 'Dr /Heba Nabil',
                  pdf: '7 PDF',
                  video: '7 Video',
                  image: 'assets/Images/SW.jpg',
                ),
                ResourceCard(
                  subject: 'Future Science',
                  doctor: 'Dr /Gehad Hassan',
                  pdf: '8 PDF',
                  video: '8 Video',
                  image: 'assets/Images/Algo.jpg',
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


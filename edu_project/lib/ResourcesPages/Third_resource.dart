// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../Widgets/Resource_card.dart';
class ThirdResource extends StatelessWidget {
  const ThirdResource({super.key});

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
                    Navigator.pushNamed(context, 'Software');
                  },
                  child:  ResourceCard(
                    subject: 'Software Engineering',
                    doctor: 'Dr /Mostafa Thabet',
                    pdf: '6 PDF',
                    video: '6 Video',
                    image: 'assets/Images/SW.jpg',icon1: Icon(Icons.add_box_outlined),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'Algorithm');
                  },
                  child:  ResourceCard(
                    subject: 'Algorithms Design',
                    doctor: 'Dr /Asmaa Hashem',
                    pdf: '7 PDF',
                    video: '7 Video',
                    image: 'assets/Images/Algo.jpg',icon1: Icon(Icons.add_box_outlined),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'DB');
                  },
                  child:  ResourceCard(
                    subject: 'Database Management',
                    doctor: 'Dr /Asmaa Hashemm',
                    pdf: '6 PDF',
                    video: '6 Video',
                    image: 'assets/Images/Database.jpg',icon1: Icon(Icons.add_box_outlined),
                  ),
                ),
                 ResourceCard(
                  subject: 'Data Mining',
                  doctor: 'Dr /Mohamed Hassan Farag',
                  pdf: '5 PDF',
                  video: '5 Video',
                  image: 'assets/Images/ML.jpeg',icon1: Icon(Icons.add_box_outlined),
                ),

                 ResourceCard(
                  subject: 'Computer Architecture',
                  doctor: 'Dr /Howida Yossry',
                  pdf: '8 PDF',
                  video: '8 Video',
                  image: 'assets/Images/DataStructure.jpg',icon1: Icon(Icons.add_box_outlined),
                ),
                 ResourceCard(
                  subject: 'Operating System',
                  doctor: 'Dr /Shereen Ahmed',
                  pdf: '6 PDF',
                  video: '6 Video',
                  image: 'assets/Images/Mobile.jpg',icon1: Icon(Icons.add_box_outlined),
                ),
                 ResourceCard(
                  subject: 'Network 1',
                  doctor: 'Dr /Eslam El Maghraby',
                  pdf: '8 PDF',
                  video: '8 Video',
                  image: 'assets/Images/Network.jpeg',icon1: Icon(Icons.add_box_outlined),
                ),
                 ResourceCard(
                  subject: 'Embedded System',
                  doctor: 'Dr /Ahmed Sadek',
                  pdf: '8 PDF',
                  video: '8 Video',
                  image: 'assets/Images/OOP.jpg',icon1: Icon(Icons.add_box_outlined),
                ),
                 ResourceCard(
                  subject: 'Artificial Intelligence',
                  doctor: 'Dr /Esraa El Hariri',
                  pdf: '8 PDF',
                  video: '8 Video',
                  image: 'assets/Images/ML.jpeg',
                ),
                 ResourceCard(
                  subject: 'Automata and Language',
                  doctor: 'Dr /Fawzya Ramadan',
                  pdf: '8 PDF',
                  video: '8 Video',
                  image: 'assets/Images/english.jpeg',
                ),
                 ResourceCard(
                  subject: 'Image Processing',
                  doctor: 'Dr /Mary Monir',
                  pdf: '8 PDF',
                  video: '8 Video',
                  image: 'assets/Images/Algo.jpg',
                ),
                 ResourceCard(
                  subject: 'GIS',
                  doctor: 'Dr /Rehab Mahmoud',
                  pdf: '4 PDF',
                  video: '4 Video',
                  image: 'assets/Images/BA.jpg',
                ),
                 ResourceCard(
                  subject: 'DSS',
                  doctor: 'Dr /Rehab Mahmoud',
                  pdf: '6 PDF',
                  video: '6 Video',
                  image: 'assets/Images/SW.jpg',
                ),
                 ResourceCard(
                  subject: 'IS Strategy ',
                  doctor: 'Dr /Asmaa Hashem',
                  pdf: '7 PDF',
                  video: '7 Video',
                  image: 'assets/Images/phys1.jpeg',
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


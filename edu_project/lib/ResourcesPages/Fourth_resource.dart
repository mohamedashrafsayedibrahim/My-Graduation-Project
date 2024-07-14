import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../Widgets/Resource_card.dart';

class FourthResource extends StatelessWidget {
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
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'Mobile');
                  },
                  child: ResourceCard(
                    subject: 'Mobile Computing',
                    doctor: 'Dr /Howida Youssry',
                    pdf: '5 PDF',
                    video: '5 Video',
                    image: 'assets/Images/Mobile.jpg',
                    icon1: Icon(Icons.add_box_outlined),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'Network');
                  },
                  child: ResourceCard(
                    subject: 'Network 2',
                    doctor: 'Dr /Ahmed Sadek',
                    pdf: '7 PDF',
                    video: '7 Video',
                    image: 'assets/Images/Network.jpeg',
                    icon1: Icon(Icons.add_box_outlined),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'Bigdata');
                  },
                  child: ResourceCard(
                    subject: 'Big Data',
                    doctor: 'Dr /Esraa Raslan',
                    pdf: '5 PDF',
                    video: '5 Video',
                    image: 'assets/Images/BigData.jpg',
                    icon1: Icon(Icons.add_box_outlined),
                  ),
                ),
                ResourceCard(
                  subject: 'DB Administration',
                  doctor: 'Dr /Mostafa Thabet',
                  pdf: '5 PDF',
                  video: '5 Video',
                  image: 'assets/Images/Database.jpg',
                  icon1: Icon(Icons.add_box_outlined),
                ),
                ResourceCard(
                  subject: 'Business Analysis',
                  doctor: 'Dr / Mohamed Hassan Farag',
                  pdf: '1 PDF',
                  video: '1 Video',
                  image: 'assets/Images/BA.jpg',
                  icon1: Icon(Icons.add_box_outlined),
                ),
                ResourceCard(
                  subject: 'Information System Retrival',
                  doctor: 'Dr /Rasha Badry',
                  pdf: '5 PDF',
                  video: '5 Video',
                  image: 'assets/Images/DataStructure.jpg',
                  icon1: Icon(Icons.add_box_outlined),
                ),
                ResourceCard(
                  subject: 'Semantic Web',
                  doctor: 'Dr /Ahmed Salama',
                  pdf: '6 PDF',
                  video: '6 Video',
                  image: 'assets/Images/Algo.jpg',
                  icon1: Icon(Icons.add_box_outlined),
                ),
                ResourceCard(
                  subject: 'Compiler Construction',
                  doctor: 'Dr /Fawzya Ramadan',
                  pdf: '7 PDF',
                  video: '7 Video',
                  image: 'assets/Images/prog1.jpeg',
                  icon1: Icon(Icons.add_box_outlined),
                ),
                ResourceCard(
                  subject: 'Machine Learning',
                  doctor: 'Dr /Aymen Anter',
                  pdf: '9 PDF',
                  video: '9 Video',
                  image: 'assets/Images/ML.jpeg',
                  icon1: Icon(Icons.add_box_outlined),
                ),
                ResourceCard(
                  subject: 'Intro to Computer Security',
                  doctor: 'Dr /Masoud Esmail',
                  pdf: '10 PDF',
                  video: '10 Video',
                  image: 'assets/Images/Network.jpeg',
                ),
                ResourceCard(
                  subject: 'E-Commerce',
                  doctor: 'Dr /Mohamed Hassan Farag',
                  pdf: '1 PDF',
                  video: '0 Video',
                  image: 'assets/Images/e.jpeg',
                ),
                ResourceCard(
                  subject: 'IS Application',
                  doctor: 'Dr /Ahmed Salama',
                  pdf: '6 PDF',
                  video: '6 Video',
                  image: 'assets/Images/temp.jpeg',
                ),
                ResourceCard(
                  subject: 'Social Netorking',
                  doctor: 'Dr /Mohamed Hassan Farag',
                  pdf: '1 PDF',
                  video: '0 Video',
                  image: 'assets/Images/social.jpeg',
                ),
                ResourceCard(
                  subject: 'Software Testing',
                  doctor: 'Dr /Rehab Mahmoud',
                  pdf: '6 PDF',
                  video: '6 Video',
                  image: 'assets/Images/DataStructure.jpg',
                ),
                ResourceCard(
                  subject: 'Parallel Computing',
                  doctor: 'Dr /Masoud Esmail',
                  pdf: '8 PDF',
                  video: '8 Video',
                  image: 'assets/Images/SW.jpg',
                ),
                ResourceCard(
                  subject: 'Advanced Knowledge',
                  doctor: 'Dr /Mohamed Hassan Ibrahim',
                  pdf: '5 PDF',
                  video: '5 Video',
                  image: 'assets/Images/Algo.jpg',
                ),
                ResourceCard(
                  subject: 'IOT',
                  doctor: 'Dr /Ahmed Sadek',
                  pdf: '4 PDF',
                  video: '4 Video',
                  image: 'assets/Images/ML.jpeg',
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

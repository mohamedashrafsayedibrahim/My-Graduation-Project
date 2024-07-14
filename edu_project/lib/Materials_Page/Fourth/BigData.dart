// ignore_for_file: file_names

import 'package:edu_project/BasicPages/PDF_Page.dart';
import 'package:edu_project/Widgets/RCard.dart';
import 'package:flutter/material.dart';


class Bigdata extends StatefulWidget {
  const Bigdata({super.key});

  @override
  State<Bigdata> createState() => _BigdataState();
}

class _BigdataState extends State<Bigdata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 40.0, left: 16.0, right: 16.0),
              child: Center(
                child: Text(
                  'Courses',
                  style: TextStyle(
                    color: Color(0xFF164863),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Ubuntu',
                    fontSize: 40,
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              child: SizedBox(
                width: double.infinity,
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      'assets/Images/BigData.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                'Big Data Fundmental',
                style: TextStyle(
                  color: Color(0xFF164863),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Ubuntu',
                ),
              ),
            ),
           
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                'Big data technologies and techniques, such as distributed computing, NoSQL databases, machine learning, and data visualization, have been developed to address the challenges posed by the volume, velocity, and variety of big data. ',
                style: TextStyle(
                    color: Color(0xFF164863),
                    fontSize: 13.5,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Ubuntu'),
              ),
            ),
          Padding(
              padding: const EdgeInsets.all(10),
              child: DefaultTabController(
                length: 2,
                child: Container(
                  color: Colors.lightBlue.shade50,
                  child: TabBar(
                    unselectedLabelColor: Colors.blueGrey,
                    labelColor: Color(0xFF164863),
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                    tabs: <Widget>[
                      Tab(
                        text: 'PDFs',
                      ),
                      Tab(
                        text: 'Videos',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  // Resources List
                  GestureDetector(
                    onTap: () async {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return PdfViewerPage(
                          lec: 'BigData_lec1.pdf',
                        );
                      }));
                    },
                    child: const ResourceCardd(
                      subject: 'Lecture 1',
                      image1: 'assets/Images/BigData.jpg',
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return PdfViewerPage(
                          lec: 'BigData_lec2.pdf',
                        );
                      }));
                    },
                    child: const ResourceCardd(
                      subject: 'Lecture 2',
                      image1: 'assets/Images/BigData.jpg',
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return PdfViewerPage(
                          lec: 'BigData_lec3.pdf',
                        );
                      }));
                    },
                    child: const ResourceCardd(
                      subject: 'Lecture 3',
                      image1: 'assets/Images/BigData.jpg',
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return PdfViewerPage(
                          lec: 'BigData_lec4.pdf',
                        );
                      }));
                    },
                    child: const ResourceCardd(
                      subject: 'Lecture 4',
                      image1: 'assets/Images/BigData.jpg',
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return PdfViewerPage(
                          lec: 'BigData_lec3.pdf',
                        );
                      }));
                    },
                    child: const ResourceCardd(
                      subject: 'Lecture 5',
                      image1: 'assets/Images/BigData.jpg',
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

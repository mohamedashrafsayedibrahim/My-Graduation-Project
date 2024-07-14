// ignore_for_file: file_names

import 'package:edu_project/BasicPages/PDF_Page.dart';
import 'package:edu_project/Widgets/RCard.dart';
import 'package:flutter/material.dart';



class Foundation extends StatefulWidget {
  const Foundation({super.key});

  @override
  State<Foundation> createState() => _FoundationState();
}

class _FoundationState extends State<Foundation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding:
                  EdgeInsets.only(top: 40.0, left: 16.0, right: 16.0),
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
                      'assets/Images/prog1.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                'Foundation of IS',
                style: TextStyle(
                  color: Color(0xFF164863),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Ubuntu',
                ),
              ),
            ),
            const Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Icon(Icons.description,
                          color: Color(0xFF1D7A85), size: 25),
                      SizedBox(height: 4),
                      Text(
                        'Total Pdfs',
                        style: TextStyle(
                            color: Color(0xFF1D7A85),
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '10 Pdfs',
                        style: TextStyle(
                            color: Color(0xFF164863),
                            fontSize: 12,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.video_collection,
                          color: Color(0xFF1D7A85), size: 25),
                      SizedBox(height: 4),
                      Text(
                        'Total Videos',
                        style: TextStyle(
                            color: Color(0xFF1D7A85),
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '15 Videos',
                        style: TextStyle(
                            color: Color(0xFF164863),
                            fontSize: 12,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                'Foundations of Information Systems is a core course typically offered in undergraduate information systems (IS) or computer information systems (CIS) programs. This course provides students with a fundamental understanding of the role and importance of information systems in organizations. ',
                style: TextStyle(
                    color: Color(0xFF164863),
                    fontSize: 13.5,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Ubuntu'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                  left: 65, right: 65, top: 10, bottom: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'PDFs',
                      style: TextStyle(
                          color: Color(0xFF164863),
                          fontSize: 18,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Videos',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Color(0xFF164863),
                          fontSize: 18,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ],
              ),
            ),
             SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  // Resources List
                  GestureDetector(
                    onTap: () async{
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){  
                        return PdfViewerPage(lec: 'Found_book.pdf',);
                      } ) );
                    },
                    child: const ResourceCardd(
                      subject: 'Foundation of IS Book',
                         image1:  'assets/Images/prog1.jpeg',
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


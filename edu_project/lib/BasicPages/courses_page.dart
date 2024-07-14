
import 'package:edu_project/Widgets/Resource_card.dart';
import 'package:flutter/material.dart';

class CoursesPage extends StatefulWidget {
  const CoursesPage({super.key});

  @override
  State<CoursesPage> createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: Text(
            'My Courses',
            style: TextStyle(
              color: Color(0xFF164863),
              fontWeight: FontWeight.bold,
              fontFamily: 'Ubuntu',
              fontSize: 40,
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.lightBlue.shade50,
      ),

       body: Padding(
         padding: const EdgeInsets.only(top: 30),
         child: SingleChildScrollView(
          clipBehavior: Clip.none,
          child: Column(
          children: [
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
                    icon1: Icon(Icons.favorite_border_outlined),
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
                    icon1: Icon(Icons.favorite_border_outlined),
                  ),
                  
                ),
                 ResourceCard(
                  subject: 'E-Commerce',
                  doctor: 'Dr /Mohamed Hassan Farag',
                  pdf: '1 PDF',
                  video: '0 Video',
                  image: 'assets/Images/e.jpeg',
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
          ],
         ),),
       ),
    );
  }
}



  // Future<String?> getPdfUrl() async {
  //   // Reference to the PDF file in Firebase Storage
  //   Reference pdfReference = FirebaseStorage.instance.ref().child('Ch3.pdf');
    
  //   try {
  //     // Fetch the download URL for the PDF file
  //     String downloadURL = await pdfReference.getDownloadURL();
  //     return downloadURL;
  //   } catch (e) {
  //     // Error fetching PDF
  //     print('Error fetching PDF: $e');
  //     return null;
  //   }
  // }

// class PDFViewer extends StatefulWidget {
//   final String pdfUrl;

//   const PDFViewer({Key? key, required this.pdfUrl}) : super(key: key);

//   @override
//   State<PDFViewer> createState() => _PDFViewerState();
// }

// class _PDFViewerState extends State<PDFViewer> {
//   get pdfUrl => null;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('PDF Viewer'),
//       ),
//       body: PDFView(
//         filePath: pdfUrl,
//       ),
//     );
//   }
// }
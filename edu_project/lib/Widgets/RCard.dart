import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class ResourceCardd extends StatelessWidget {
  final String subject;
 final String image1;
  const ResourceCardd({super.key, required this.subject, required this.image1});

  

  get assetPDFPath => null;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 15),
      child: Card(
        color: const Color.fromARGB(232, 255, 255, 255),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 5,
        child: Row(
          children: [
            Container(
              width: 120,
              height: 70,
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                image: DecorationImage(
                  image: AssetImage(image1),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        subject,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color(0xff164863),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<String?> getPdfUrl() async {
    // Reference to the PDF file in Firebase Storage
    Reference pdfReference =
        FirebaseStorage.instance.ref().child('CS_Lec1.pdf');

    try {
      // Fetch the download URL for the PDF file
      String downloadURL = await pdfReference.getDownloadURL();
      return downloadURL;
    } catch (e) {
      // Error fetching PDF
      print('Error fetching PDF: $e');
      return null;
    }
  }
}

class PDFViewer extends StatefulWidget {
  final String pdfUrl;

  const PDFViewer({super.key, required this.pdfUrl});

  @override
  State<PDFViewer> createState() => _PDFViewerState();
}

class _PDFViewerState extends State<PDFViewer> {
  get pdfUrl => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PDF Viewer'),
      ),
      body: PDFView(
        filePath: pdfUrl,
      ),
    );
  }
}

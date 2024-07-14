// ignore_for_file: must_be_immutable, library_private_types_in_public_api

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:path_provider/path_provider.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class PdfViewerPage extends StatefulWidget {
  PdfViewerPage({super.key, required this.lec});
  String lec;
  @override
  _PdfViewerPageState createState() => _PdfViewerPageState();
}

class _PdfViewerPageState extends State<PdfViewerPage> {
  late String pdfPath;

  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchPdf();
  }

  Future<void> fetchPdf() async {
    firebase_storage.FirebaseStorage storage =
        firebase_storage.FirebaseStorage.instance;
    try {
      // Replace 'Chapter1.pdf' with your actual file path in Firebase Storage
      final ref = storage.ref().child(widget.lec);
      // ignore: unused_local_variable
      final url = await ref.getDownloadURL();

      // Create a local file to store the PDF
      final tempDir = await getTemporaryDirectory();
      final file = File('${tempDir.path}/${widget.lec}');

      // Download the PDF and save it to the local file
      await ref.writeToFile(file);

      setState(() {
        pdfPath = file.path;
        isLoading = false;
      });
    } catch (e) {
      // ignore: avoid_print
      print('Error fetching PDF: $e');
      // Handle errors
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 18, 95, 104),
        title: const Text('PDF Content',style: TextStyle(
          fontSize: 22,
                        fontFamily: 'Ubuntu',
                        fontWeight: FontWeight.bold,
                        color: Colors.white
        ),),
      ),
      body: Center(
        child: isLoading
            ? const CircularProgressIndicator()
            : PDFView(
                filePath: pdfPath,
              ),
      ),
    );
  }
}

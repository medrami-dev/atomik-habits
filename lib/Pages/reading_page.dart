import 'package:Atomic_Habits/crt/continue_reading.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ReadingPage extends StatefulWidget {
  const ReadingPage({super.key});

  @override
  State<ReadingPage> createState() => _ReadingPageState();
}

class _ReadingPageState extends State<ReadingPage> {
  //* Create a PdfViewerController
  final PdfViewerController _pdfViewerController = PdfViewerController();
  ContinueReading continueReading = ContinueReading();
  // Load the current page when the widget is initialized
  @override
  void initState() {
    super.initState();
    continueReading.loadCurrentPage().then((page) {
      _pdfViewerController.jumpToPage(page);
    });
  }

  @override
  void dispose() {
    // Save the current page when the widget is disposed
    continueReading.saveCurrentPage(_pdfViewerController.pageNumber);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: deviceHeight * 1,
            child: SfPdfViewer.asset(
              "assets/book/atomic_book.pdf",
              controller: _pdfViewerController,
              // Save the current page when the page is changed
              onPageChanged: (PdfPageChangedDetails details) {
                continueReading
                    .saveCurrentPage(_pdfViewerController.pageNumber);
              },
              enableDoubleTapZooming: false,
            ),
          ),
        ],
      ),
    );
  }
}

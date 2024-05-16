import 'package:Atomic_Habits/crt/continue_reading.dart';
import 'package:Atomic_Habits/main.dart';
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back_ios_new),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              const ReadingTweaks(),
            ],
          ),
          SizedBox(
            height: deviceHeight * 0.88,
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

class ReadingTweaks extends StatefulWidget {
  const ReadingTweaks({super.key});

  @override
  State<ReadingTweaks> createState() => _ReadingTweaksState();
}

class _ReadingTweaksState extends State<ReadingTweaks> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: const Icon(Icons.dark_mode_outlined),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(
            Icons.bookmark_border,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}

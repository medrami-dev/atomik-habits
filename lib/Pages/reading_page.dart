import 'package:Atomic_Habits/crt/continue_reading.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../crt/ads_manager.dart';

class ReadingPage extends StatefulWidget {
  const ReadingPage({super.key});

  @override
  State<ReadingPage> createState() => _ReadingPageState();
}

class _ReadingPageState extends State<ReadingPage> {
  BannerAd? _bannerAd;
  bool isLoaded = false;
  //* Load the banner ad
  void loadBannerAd() {
    _bannerAd = BannerAd(
      adUnitId: AdManager.bannerAdId,
      size: AdSize.banner,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (Ad ad) {
          setState(() {
            isLoaded = true;
          });
        },
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          ad.dispose();
        },
      ),
    );
    _bannerAd!.load();
  }

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
    loadBannerAd();
  }

  @override
  void dispose() {
    // Save the current page when the widget is disposed
    continueReading.saveCurrentPage(_pdfViewerController.pageNumber);
    _bannerAd?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: deviceHeight * 0.9,
            child: SfPdfViewer.asset(
              "assets/book/atomic.pdf",
              controller: _pdfViewerController,
              // Save the current page when the page is changed
              onPageChanged: (PdfPageChangedDetails details) {
                continueReading
                    .saveCurrentPage(_pdfViewerController.pageNumber);
              },
              enableDoubleTapZooming: false,
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: AdSize.banner.height.toDouble(),
            width: AdSize.banner.width.toDouble(),
            child: isLoaded
                ? AdWidget(ad: _bannerAd!)
                : Container(
                    alignment: Alignment.center,
                    child: Text(
                      "  لا يوجد اعلان متوفر ",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.tajawal(),
                    ),
                  ),
          )
        ],
      ),
    );
  }
}

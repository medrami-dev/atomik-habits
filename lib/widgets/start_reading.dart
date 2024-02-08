import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../crt/ads_manager.dart';

class StartReadingButton extends StatefulWidget {
  const StartReadingButton({super.key});

  @override
  State<StartReadingButton> createState() => _StartReadingButtonState();
}

class _StartReadingButtonState extends State<StartReadingButton> {
  InterstitialAd? interstitialAd;

  void createInterstitialAd() {
    InterstitialAd.load(
      adUnitId: AdManager.interstitialAdId,
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (InterstitialAd ad) {
          ad.show();
        },
        onAdFailedToLoad: (LoadAdError error) => interstitialAd = null,
      ),
    );
  }

  void showInterstitialAd() {
    if (interstitialAd != null) {
      interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
        onAdDismissedFullScreenContent: (InterstitialAd ad) {
          ad.dispose();
          createInterstitialAd();
        },
        onAdFailedToShowFullScreenContent: (InterstitialAd ad, AdError error) {
          ad.dispose();
          createInterstitialAd();
        },
      );
      interstitialAd!.show();
      interstitialAd = null;
    }
  }

  @override
  initState() {
    super.initState();
    createInterstitialAd();
  }

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        if (interstitialAd != null) {
          showInterstitialAd();
          Navigator.pushNamed(context, "/readingPage");
        } else {
          createInterstitialAd();
          Navigator.pushNamed(context, "/readingPage");
        }
      },
      child: Container(
          alignment: Alignment.center,
          height: deviceHeight * 0.08,
          width: deviceWidth * 0.4,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 199, 169, 49),
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            textDirection: TextDirection.rtl,
            children: [
              const SizedBox(width: 20),
              Text(
                "ابدأ القراءة",
                style: GoogleFonts.tajawal(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(width: 10),
              const Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.white,
              ),
              SizedBox(width: deviceWidth * 0.05),
            ],
          )),
    );
  }
}

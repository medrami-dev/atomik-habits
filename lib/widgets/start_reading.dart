import 'package:flutter/material.dart';
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
        padding: const EdgeInsets.all(15),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xff21ac94),
        ),
        child: const Text(
          "ابدأ القراءة",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}

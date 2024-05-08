import 'package:Atomic_Habits/Pages/about_app.dart';
import 'package:Atomic_Habits/Pages/splash.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'Pages/home.dart';
import 'Pages/reading_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Atomic Habits',
        routes: {
          "/": (context) => const SplashScreen(),
          "/home": (context) => const Home(),
          "/readingPage": (context) => const ReadingPage(),
          "/aboutApp": (context) => const AboutApp(),
          // "/aboutDeveloper": (context) => const AboutDeveloper(),
        },
        theme: ThemeData(
            useMaterial3: true,
            textTheme: ThemeData.dark().textTheme.apply(
                  fontFamily: "Tajawal",
                )));
  }
}

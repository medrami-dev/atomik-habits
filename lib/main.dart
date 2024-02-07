import 'package:flutter/material.dart';
import 'Pages/home.dart';
import 'Pages/reading_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Atomic Habits',
      routes: {
        "/": (context) => const Home(),
        "/readingPage": (context) => const ReadingPage(),
      },
      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}

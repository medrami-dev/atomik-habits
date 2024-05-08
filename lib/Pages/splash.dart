import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateAfterSomeTime();
  }

  Future navigateAfterSomeTime() async {
    return Future.delayed(const Duration(seconds: 2), () {
      // checkIfUser();
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  Future checkIfUser() async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey('currentPage')) {
      Navigator.pushReplacementNamed(context, '/readingPage');
    } else {
      Navigator.pushReplacementNamed(context, '/home');
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF21ac94),
      body:
          Center(child: Text("العادات الذرية", style: TextStyle(fontSize: 50))),
    );
  }
}

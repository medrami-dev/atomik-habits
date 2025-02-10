// ignore_for_file: unused_element
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:page_transition/page_transition.dart';
import '../widgets/book_desc.dart';
import '../widgets/start_reading.dart';
import 'package:url_launcher/url_launcher.dart';
import 'about_app.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // The url to launch
    final Uri url = Uri.parse('https://instagram.com/med.rami.dev/');
    Future<void> launchMyUrl() async {
      if (!await launchUrl(url)) {
        throw Exception('Could not launch $url');
      }
    }

    return Scaffold(
      // The app bar
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "العادات الذرية",
        ),
        leading: IconButton.filled(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(
                const Color(0xfff1f6f4),
              ),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade,
                      duration: const Duration(milliseconds: 300),
                      child: const AboutApp()));
            },
            icon: const Icon(Icons.info_outline)),
        actions: [
          IconButton(
            onPressed: launchMyUrl,
            icon: const Icon(Iconsax.instagram_outline),
          ),
        ],
      ),
      bottomSheet: const SizedBox(height: 65, child: StartReadingButton()),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'assets/images/book_img.jpg',
            width: 200,
            height: 300,
          ),
          const BookDesc(),
        ],
      ),
    );
  }
}

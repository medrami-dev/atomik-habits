// ignore_for_file: unused_element
import 'package:Atomic_Habits/Pages/drawer.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import '../widgets/book_desc.dart';
import '../widgets/start_reading.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    // The url to launch
    final Uri url = Uri.parse('https://instagram.com/med.rami.dev/');
    //
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
        actions: [
          IconButton.filled(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  const Color(0xfff1f6f4),
                ),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.rightToLeftWithFade,
                        duration: const Duration(milliseconds: 400),
                        child: const CustomDrawerScreen()));
              },
              icon: Directionality(
                textDirection: TextDirection.rtl,
                child: Image.asset(
                  "assets/images/bars-sort.png",
                  height: 20,
                  width: 20,
                ),
              )),
          const SizedBox(
            width: 10,
          )
        ],
      ),

      bottomSheet: const SizedBox(height: 65, child: StartReadingButton()),
      body: Column(
        children: [
          Lottie.network(
            'https://lottie.host/dde900b7-262f-48e4-9a54-06bff91e576a/PePQ4LJXXU.json',
            width: deviceWidth * 0.9,
            height: deviceHeight * 0.4,
          ),
          const BookDesc(),
        ],
      ),
    );
  }
}

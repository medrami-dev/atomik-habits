// ignore_for_file: unused_element

import 'package:Atomic_Habits/widgets/image_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/book_desc.dart';
import '../widgets/start_reading.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    // The url to launch
    final Uri url = Uri.parse('https://instagram.com/med.rami.dev/');
    // ignore: no_leading_underscores_for_local_identifiers
    //
    // ignore: no_leading_underscores_for_local_identifiers
    Future<void> _launchUrl() async {
      if (!await launchUrl(url)) {
        throw Exception('Could not launch $url');
      }
    }

    return Scaffold(
      // The app bar
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "مرحبا بك",
          style: GoogleFonts.tajawal(
              color: const Color.fromARGB(255, 74, 74, 74),
              fontSize: 25,
              fontWeight: FontWeight.w500),
        ),
        actions: [
          ImageButton(onTap: () async {
            _launchUrl();
          }),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      // The body of the app
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        width: deviceWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              "assets/images/book_img.jpg",
              scale: 0.75,
            ),
            SizedBox(
              height: deviceHeight * 0.03,
            ),
            Expanded(child: ListView(children: const [BookDesc()])),
            SizedBox(
              height: deviceHeight * 0.02,
            ),
            const StartReadingButton()
          ],
        ),
      ),
    );
  }
}

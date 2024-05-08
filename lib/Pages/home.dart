// ignore_for_file: unused_element

import 'package:Atomic_Habits/widgets/custom_drawer.dart';
import 'package:Atomic_Habits/widgets/image_button.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
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
            ImageButton(onTap: () async {
              launchMyUrl();
            }),
            const SizedBox(
              width: 10,
            )
          ],
          leading: Builder(builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          })),
      drawer: const CustomDrawer(),
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

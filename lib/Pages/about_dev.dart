import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

class AboutDev extends StatelessWidget {
  const AboutDev({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: null,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            height: 200,
            decoration: BoxDecoration(
              color: const Color(0xff21ac94),
              borderRadius: BorderRadius.circular(5),
            ),
            alignment: Alignment.center,
            child: const Text("ABOUT ME",
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            height: 200,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 28, 84, 195),
              borderRadius: BorderRadius.circular(5),
            ),
            alignment: Alignment.center,
            child: const Text("ABOUT ME",
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            height: 200,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 203, 151, 29),
              borderRadius: BorderRadius.circular(5),
            ),
            alignment: Alignment.center,
            child: const Text("ABOUT ME",
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
